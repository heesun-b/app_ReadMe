import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class MembershipPagePayment extends StatelessWidget {
  const MembershipPagePayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("결제정보", style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20
          ),),
        ),
        Divider(thickness: 2,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Text("총 상품 금액", style: TextStyle(
                    fontWeight: FontWeight.w700
                ),),
                SizedBox(width: 10,),
                Text("9,900원"),
              ],),
              SizedBox(height: 10,),
              // Text("결제수단", style: TextStyle(
              //     fontWeight: FontWeight.w700
              // )),
            ],
          ),
        ),
      ],
    );
  }
}
