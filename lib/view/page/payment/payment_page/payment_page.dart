import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/use_cart/use_cart_dto.dart';
import 'package:readme_app/view/page/payment/payment_page/components/payment_page_body.dart';

class PaymentPage extends ConsumerWidget {
  PaymentPage({Key? key}) : super(key: key);

  String priceFormat(int price) {
    var newPrice = NumberFormat('###,###,###,### 원');
    return newPrice.format(price);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton(
            backgroundColor: Colours.app_sub_black,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
            onPressed: () {
              Navigator.pushNamed(context, Move.navigationBar);
            },
            child: Text("완료", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20),)
          ),
        ),
      ),
      backgroundColor: Colours.app_sub_white,
      appBar: AppBar(
        title: Text(
          "결제정보",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: 22),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
              padding: EdgeInsets.only(left: 10, right: 5),
                constraints: BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: HsStyleIcons.back),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
                onPressed: () {
                  Navigator.pushNamed(context, Move.navigationBar);
                },
                icon: HsStyleIcons.homeFill,)
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: PaymentPageBody(), //PaymentPageBodyMembership()
    );
  }
}

