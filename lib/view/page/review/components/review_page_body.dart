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
          child: _reviewTile(context),
        );
      }),
    );
  }

  Widget _reviewTile(BuildContext context) {
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
              _topInfo(context),
              SizedBox(
                height: 10,
              ),
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
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("도서명 : 1984", style: TextStyle(fontSize: Dimens.font_sp12),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text("|"),
                ),
                Text("조지 오웰", style: TextStyle(fontSize: Dimens.font_sp12),),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "너무 재밌어요!",
              style: TextStyle(fontSize: Dimens.font_sp16),
            ),
          ],
        )
      ],
    );
  }

  Widget _topInfo(BuildContext context) {
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
            Text(
              "2023.04.25",
              style: TextStyle(fontSize: Dimens.font_sp12),
            )
          ],
        ),
        SizedBox(
          height: 20,
          width: 40,
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    scrollable: false,
                    alignment: Alignment.center,
                    content: Text("댓글을 삭제하시겠습니까?"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context, '취소');
                          },
                          child: Text('취소')),
                      TextButton(
                          onPressed: () {
                            // 추가
                          },
                          child: Text('확인')),
                    ],
                  );
                },
              );
            },
            child: Text("삭제"),
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
          ),
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
