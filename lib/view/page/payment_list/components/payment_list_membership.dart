import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';

class PaymentListMembership extends StatefulWidget {
  const PaymentListMembership({Key? key}) : super(key: key);

  @override
  State<PaymentListMembership> createState() => _PaymentListMembershipState();
}

class _PaymentListMembershipState extends State<PaymentListMembership> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(
            thickness: 15,
            height: 15,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colours.app_sub_grey))),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "멤버십명 : 스탠다드",
                        style: TextStyle(),
                      ),
                      Text("결제일 : 2023.04.12"),
                      Text("이용 기간 : 2023.04.12 ~ 2023.05.11"),
                      Text("카드 정보 : **** - **** - **** -6666"),
                      Text("결제 금액 : 9,900원"),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );;
  }
}
