import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/cart/components/cart_page_body.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isAllChecked = false;

  int getSum() {
    int sum = cartList
        .where((element) => element.ischecked)
        .map((e) => e.price)
        .toList()
        .fold(0, (a, b) => a + b);
    return sum;
  }

  int getCount() {
    int count = cartList.where((element) => element.ischecked).toList().length;
    return count;
  }

  allChecked(value) {
    if (value == true) {
      cartList.forEach((element) => element.ischecked = true);
    } else {
      cartList.forEach((element) => element.ischecked = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.app_sub_white,
      appBar: AppBar(
        title: Text(
          "장바구니",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: 22),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            HsStyleIcons.back,
            HsStyleIcons.homeFill,
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: CartPageBody(),
    );
  }
}
