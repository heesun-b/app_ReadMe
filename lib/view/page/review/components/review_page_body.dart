import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class ReviewPageBody extends StatelessWidget {
  const ReviewPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: _reviewTile(),
        );
      }),
    );
  }

  Widget _reviewTile() {
    return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colours.app_sub_grey),
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  _topInfo(),
                  SizedBox(height: 10,),
                  _bottomInfo()
                ],
              ),
            ));
  }

  Widget _bottomInfo() {
    return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/book.jpg",
                      width: 70,
                      height: 90,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("도서명 : 1984 / 조지 오웰"),
                        SizedBox(height: 20,),
                        Text("너무 재밌어요!", style: TextStyle(
                            fontSize: Dimens.font_sp16
                        ),),
                      ],
                    )
                  ],
                );
  }

  Widget _topInfo() {
    return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        starScore(3),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("|"),
                        ),
                        Text("2023.04.25", style: TextStyle(
                            fontSize: Dimens.font_sp12
                        ),)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 40,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("수정"),
                            style:
                            TextButton.styleFrom(padding: EdgeInsets.zero),
                          ),
                        ),
                        Text("|"),
                        SizedBox(
                          height: 20,
                          width: 40,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("삭제"),
                            style:
                            TextButton.styleFrom(padding: EdgeInsets.zero),
                          ),
                        ),
                      ],
                    )
                  ],
                );
  }


  Widget starScore(int num) {
    return Row(
      children: [
        Row(
          children: List.generate(num, (index) {
            return HsStyleIcons.starFill;
          }),
        ),
        Row(
          children: List.generate(5 - num, (index) {
            return HsStyleIcons.star;
          }),
        ),
      ],
    );
  }
}
