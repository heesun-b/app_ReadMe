import 'dart:developer';

import 'package:bootpay/bootpay.dart';
import 'package:bootpay/model/extra.dart';
import 'package:bootpay/model/item.dart';
import 'package:bootpay/model/payload.dart';
import 'package:bootpay/model/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/payment_dto/payment_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/use_cart/use_cart_dto.dart';
import 'package:readme_app/repository/payment_repository.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

class BootPayDefault extends StatefulWidget {

  List<UseCartDTO> cartBookList;


  BootPayDefault({required this.cartBookList, Key? key}) : super(key: key);

  @override
  State<BootPayDefault> createState() => _BootPayDefaultState();
}

class _BootPayDefaultState extends State<BootPayDefault> {
  Payload payload = Payload();

  // String _data = ""; // 서버승인을 위해 사용되기 위한 변수

  // 나중에 진짜 id 넣어야 함
  String webApplicationId = '6440b2c4755e27001de57d57';
  String androidApplicationId = '6440b2c4755e27001de57d58';
  String iosApplicationId = '6440b2c4755e27001de57d59';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FloatingActionButton(
          heroTag: "paymentBtn",
          backgroundColor: Colours.app_sub_black,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          onPressed: () async {
            PaymentDTO paymentDTO = await paymentRequest(widget.cartBookList);
            print("체크 1 : $paymentDTO");
            bootpayDefault(context, paymentDTO);
          },
          child: const Text(
            "결제하기",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20),
          )),
    );
  }

  Future<PaymentDTO> paymentRequest (List<UseCartDTO> cartBookList) async {
    ResponseDTO responseDTO = await PaymentRepository().payment(cartBookList);
    PaymentDTO paymentDTO =  responseDTO.data;
    return paymentDTO;
  }

  void bootpayDefault(BuildContext context, PaymentDTO paymentDTO) async {

    Payload payload = await getPayload(context, paymentDTO);

    if (kIsWeb) {
      payload.extra?.openType = "redirect";
    }

    Bootpay().requestPayment(
      context: context,
      payload: payload,
      showCloseButton: false,
      // closeButton: Icon(Icons.close, size: 35.0, color: Colors.black54),
      onCancel: (String data) {
        log('------- onCancel: $data');
        DialogUtil.dialogShow(context, "결제 취소");
        Navigator.pushNamedAndRemoveUntil(context, Move.navigationBar, (route) => false);
      },
      onError: (String data) {
        log('------- onCancel: $data');
        DialogUtil.dialogShow(context, "결제 취소");
      },
      onClose: () {
        log('------- onClose');
        Bootpay().dismiss(context); //명시적으로 부트페이 뷰 종료 호출
        Navigator.pushNamedAndRemoveUntil(context, Move.paymentPage, (route) => false);
      },
      onIssued: (String data) {
        log('------- onIssued: $data');
        DialogUtil.dialogShow(context, "결제 취소");

      },
      onConfirm: (String data) {
        /**
            1. 바로 승인하고자 할 때
            return true;
         **/
        /***
            2. 클라이언트 승인 하고자 할 때
            Bootpay().transactionConfirm();
            return false;
         ***/
        /***
            3. 서버승인을 하고자 하실 때 (클라이언트 승인 X)
            return false; 후에 서버에서 결제승인 수행
         */
        Bootpay().transactionConfirm();
        return false;
      },
      onDone: (String data) {
        log('------- onDone: $data');
         Navigator.pushNamedAndRemoveUntil(context, Move.paymentPage, (route) => false);
      },
    );
  }


  Future<TableUser?> getUser () async {
    TableUser? user = await MySqfliteInit.getUser();
    return user;
  }


  Future< Payload> getPayload(BuildContext context, PaymentDTO paymentDTO) async {
    Payload payload = Payload();

    List<Item> itemList = [];

    List.generate(widget.cartBookList.length, (index) {
      Item item = Item();
      item.name = widget.cartBookList[index].cartDTO.book.title;
      item.qty = 1;
      item.price = widget.cartBookList[index].cartDTO.book.price.toDouble();
      item.id = widget.cartBookList[index].cartDTO.book.id.toString();
      itemList.add(item);
    });


    payload.androidApplicationId =
        androidApplicationId; // android application id

    payload.items = itemList;
    payload.pg = '다날';
    payload.method = '카드';
    payload.orderName = "도서 개별 결제"; //결제할 상품명

    var totalPrice = itemList.map((e) => e.price!.toInt()).toList().reduce((a, b) => a + b);
    payload.price = totalPrice.toDouble(); //정기결제시 0 혹은 주석

    // payload.orderId = DateTime.now()
    //     .millisecondsSinceEpoch
    //     .toString();

    //주문번호, 개발사에서 고유값으로 지정해야함
    payload.orderId = DateTime
        .now()
        .microsecondsSinceEpoch
        .toString();

    payload.metadata = {
      "paymentId" : paymentDTO.id,
      "type" : paymentDTO.type,
    }; // 전달할 파라미터, 결제 후 되돌려 주는 값

    User user = User(); // 구매자 정보
    TableUser? tableUser = await MySqfliteInit.getUser();

    user.email= tableUser?.username ?? "";
    user.id = tableUser?.id.toString() ?? "";

    Extra extra = Extra(); // 결제 옵션
    extra.separatelyConfirmed = true;

    payload.user = user;
    payload.extra = extra;
    return payload;
  }
}
