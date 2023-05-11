import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/dto/use_cart/use_cart_dto.dart';


class PaymentPageBody extends StatefulWidget {
  PaymentPageBody({Key? key}) : super(key: key);

  @override
  State<PaymentPageBody> createState() => _PaymentPageBodyState();
}

class _PaymentPageBodyState extends State<PaymentPageBody> {

  bool _expanded = false;

  String priceFormat(int price) {
    var newPrice = NumberFormat('###,###,###,### 원');
    return newPrice.format(price);
  }

  int getSum( List<UseCartDTO> paymentBooks) {
    int sum = paymentBooks
        .map((e) => e.cartDTO.book.price)
        .toList()
        .fold(0, (a, b) => a + b);
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _dateInfo(),
              const SizedBox(height: 10,),
              _bookTile(),
              const Divider(thickness: 1,),
              _totalPrice(),
              const SizedBox(height: 100,),
            ],
          ),
        ));
  }

  Widget _totalPrice() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("총 금액 ", style: TextStyle(fontWeight: FontWeight.w700,
                    fontSize: Dimens.font_sp18),),
                Text(priceFormat(15000),
                  style: const TextStyle(fontSize: Dimens.font_sp18),),
              ],
            );
  }

  Widget _bookTile() {
    return Column(
              children: List.generate(1, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xFFD9D9D9))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            width: 100,
                            imageUrl: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/book1.jpg",
                            placeholder : (context, url) => Center(
                              child: LoadingAnimationWidget.twoRotatingArc(
                                size: 50,
                                color: Colours.app_main,
                              ),
                            ),
                            fit : BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                    child: Text(
                                      "도서명",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimens.font_sp16),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 130,
                                    child: Text("성공의 법칙",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontSize: Dimens.font_sp16)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 50,
                                    child: const Text(
                                      "출판사",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimens.font_sp16),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text("제임스 스미스",
                                      style: const TextStyle(
                                          fontSize: Dimens.font_sp16)),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    child: const Text(
                                      "결제 금액",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: Dimens.font_sp16),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text("15000",
                                      style: const TextStyle(
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
              }),
            );
  }
  Widget _dateInfo() {
    return Row(
              children: [
                const Text(
                  "2023.05.11",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: Dimens.font_sp20,
                      color: Colours.app_sub_black),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "(결제)",
                  style: TextStyle(
                      fontSize: Dimens.font_sp14, color: Colours.app_sub_black),
                ),
                const Spacer(),
                Text("총 1건", style: const TextStyle(
                    fontSize: Dimens.font_sp14, color: Colours.app_sub_blue))
              ],
            );
  }
}
//