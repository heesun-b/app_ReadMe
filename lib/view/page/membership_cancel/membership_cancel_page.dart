import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class MembershipCancelPage extends StatelessWidget {
  const MembershipCancelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "멤버십 해지",
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
              icon: HsStyleIcons.homeFill,)
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,

      ),
      body: Column(
        children: [
            Text("ReadMe 구독을 해지하시겠어요?"),
            Text("멤버십 해지에 관하여"),
            Text("아래 사항을 확인해 주세요!"),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colours.app_sub_grey)
              ),
              child: Column(
                children: [
                  Row(children: [
                    Icon(Icons.circle),
                    Text("구독 서비스는 현 결제 주기 마지막 날인 2023년 5월 1일에 해지됩니다."),
                  ],)

                ],
              ),
            )
        ],
      ),
    );
  }
}
