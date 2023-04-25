import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class PaymentListPage extends StatelessWidget {
  const PaymentListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "결제목록",
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
                Navigator.pushNamed(context, "/main");
              },
              icon: HsStyleIcons.homeFill,
            )
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: "멤버십",
                ),
                Tab(
                  text: "구매도서",
                )
              ],
            ),
            Expanded(
                child: TabBarView(children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.grey,
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
