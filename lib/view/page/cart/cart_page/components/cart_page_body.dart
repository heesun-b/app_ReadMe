import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:readme_app/controller/cart_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/cart/cart_page/cart_page_view_model.dart';

class CartPageBody extends ConsumerWidget {
  CartPageBody({Key? key}) : super(key: key);



  List<CartMockData> cartBooks = [];
  bool isAllChecked = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartPageModel? model = ref.watch(cartPageProvider);

    if(model != null) {
      cartBooks = model!.cartBooks;
      isAllChecked = model!.isAllChecked;
    }


    return SingleChildScrollView(
      child: Column(
        children: [
          _hsCheckBox(context, ref),
          Container(
            height: 10,
            color: Colours.app_sub_grey,
          ),
          _paymentInfo(ref),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Widget _paymentInfo(WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "결제 정보",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: Dimens.font_sp20,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Divider(thickness: 2, height: 1),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    child: Text(
                      "상품 개수",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text("${getCount()}권"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    child: Text("총 상품금액",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                  Text(priceFormat(getSum())),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _hsCheckBox(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
                activeColor: Colours.app_sub_black,
                value: isAllChecked,
                onChanged: (value) {
                    isAllChecked = value!;
                    // allChecked(value);
                    // TODO
                  ref.read(cartPageProvider.notifier).changeAllChecked(value);
                  // allChecked(value);
                }),
            Text(
              "전체 선택",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ],
        ),
        Divider(
          thickness: 5,
          height: 1,
        ),
        _bookListTile(context, ref),
      ],
    );
  }

  Widget _bookListTile(BuildContext context, WidgetRef ref) {
    return Column(
      children: List.generate(cartBooks.length, (index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colours.app_sub_darkgrey))),
          // width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                activeColor: Colours.app_sub_black,
                value: cartBooks[index].ischecked,
                onChanged: (value) {
                  // ref.read(cartPageProvider.notifier).changedOneCheck(value, index);
                  // changeChecked(value, index);
                },
              ),
              SizedBox(width: 8,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Container(
                      width: 80,
                      height: 110,
                      child: Image.network(
                        "${cartBooks[index].image}",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "${cartBooks[index].title}",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        width: 190,
                      ),
                      Text(
                          "${cartBooks[index].author} | ${cartBooks[index].store}"),
                      Row(
                        children: [
                          HsStyleIcons.star,
                          Text("${cartBooks[index].score}"),
                        ],
                      ),
                      Text("소장가 ${cartBooks[index].price}"),
                    ],
                  ),
                ],
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: HsStyleIcons.delete)
            ],
          ),
        );
      }),
    );
  }


  int getSum() {
    int sum = cartBooks
        .where((element) => element.ischecked)
        .map((e) => e.price)
        .toList()
        .fold(0, (a, b) => a + b);

    return sum;
  }

  int getCount() {
    int count = cartBooks.where((element) => element.ischecked).toList().length;
    return count;
  }

  allChecked(value) {
    if (value == true) {
      cartBooks.forEach((element) => element.ischecked = true);
    } else {
      cartBooks.forEach((element) => element.ischecked = false);
    }
  }

  changeChecked(value, int index) {
    cartBooks[index].ischecked = value;
  }

  String priceFormat(int price) {
    var newPrice = NumberFormat('###,###,###,### 원');
    return newPrice.format(price);
  }
}
