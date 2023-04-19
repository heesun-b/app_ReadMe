import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/model/payment_mock_data.dart';
import 'package:readme_app/view/components/use_button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _expanded = false;
  
  String priceFormat(int price) {
    var newPrice = NumberFormat('###,###,###,### 원');
    return newPrice.format(price);
  }

  @override
  Widget build(BuildContext context) {
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
              // 나중에 추가!!!!
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
            HsStyleIcons.back,
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/main");
                },
                icon: HsStyleIcons.homeFill)
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                    Row(
                      children: [
                        Text(
                          "2023.04.19",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: Dimens.font_sp20,
                              color: Colours.app_sub_black),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(결제)",
                          style: TextStyle(
                              fontSize: Dimens.font_sp14, color: Colours.app_sub_black),
                        ),
                        Spacer(),
                        Text("총 ${paymentList.length}건", style: TextStyle(
                            fontSize: Dimens.font_sp14, color: Colours.app_sub_blue))
                      ],
                    ),
                SizedBox(height: 10,),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: paymentList.length, itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xFFD9D9D9))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/${paymentList[index].image}",
                              width: 100,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        "도서명",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: Dimens.font_sp16),
                                      ),
                                      width: 50,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 130,
                                      child: Text("${paymentList[index].title}",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: Dimens.font_sp16)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text(
                                        "출판사",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: Dimens.font_sp16),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("그린아카데미",
                                        style: TextStyle(
                                            fontSize: Dimens.font_sp16)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 70,
                                      child: Text(
                                        "결제 금액",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: Dimens.font_sp16),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(priceFormat(paymentList[index].price),
                                        style: TextStyle(
                                            fontSize: Dimens.font_sp16)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },),
              ],
            ),
          )),
    );
  }
}
//
//   ExpansionTile buildExpansionTile() {
//     return ExpansionTile(
//       initiallyExpanded: false,
//       title: Column(
//         children: [
//           Row(
//             children: [
//               Text(
//                 "2023.04.19",
//                 style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontSize: Dimens.font_sp20,
//                     color: Colours.app_sub_black),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               Text(
//                 "(결제)",
//                 style: TextStyle(
//                     fontSize: Dimens.font_sp14, color: Colours.app_sub_black),
//               ),
//             ],
//           ),
//         ],
//       ),
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(color: Color(0xFFD9D9D9))),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//               child: Row(
//                 children: [
//                   Image.asset(
//                     "assets/images/book.jpg",
//                     width: 100,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             "도서명",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: Dimens.font_sp16),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text("1984",
//                               style: TextStyle(fontSize: Dimens.font_sp16)),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "출판사",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: Dimens.font_sp16),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text("그린아카데미",
//                               style: TextStyle(fontSize: Dimens.font_sp16)),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             "결제 금액",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: Dimens.font_sp16),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text("15,000",
//                               style: TextStyle(fontSize: Dimens.font_sp16)),
//                         ],
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
