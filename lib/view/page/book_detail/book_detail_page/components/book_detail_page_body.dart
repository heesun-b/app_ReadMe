import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/model/review_mock_data.dart';
import 'package:readme_app/util/star_score/star_score.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page_view_model.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_review_form.dart';

class BookDetailPageBody extends ConsumerWidget {
  int bookId;

  BookDetailPageBody({required this.bookId, Key? key}) : super(key: key);

  int _selectedButtonIndex = 0;
  final GlobalKey _widgetKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BookDetailPageModel? model = ref.watch(bookDetailPageProvider(bookId));

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: Dimens.font_sp20,
                ),
              ),
              onPressed: () {
                // setState(() {
                //   _selectedButtonIndex = 0;
                // });
              },
              child: Text(
                "도서 정보",
                style: TextStyle(
                  color: _selectedButtonIndex == 0
                      ? Colours.app_sub_black
                      : Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: _selectedButtonIndex == 0
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: Dimens.font_sp20),
              ),
              onPressed: () {
                Scrollable.ensureVisible(_widgetKey.currentContext!,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    alignment: 0);
              },
              child: Text(
                "리뷰 관리",
                style: TextStyle(
                  color: _selectedButtonIndex == 1
                      ? Colours.app_sub_black
                      : Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: _selectedButtonIndex == 1
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "< 책 소개 >",
                style: TextStyle(
                    color: Colours.app_sub_black,
                    fontSize: Dimens.font_sp20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                model?.book.title ?? "",
                style: TextStyle(
                  color: Colours.app_sub_black,
                  fontSize: Dimens.font_sp18,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
              // SizedBox(height: 20),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       "< 목차 >",
              //       style: TextStyle(
              //         color: Colours.app_sub_black,
              //         fontSize: Dimens.font_sp20,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     SizedBox(height: 15),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: List.generate(
              //         bookContentList.length,
              //         (index) {
              //           return Text(
              //             "",
              //             style: TextStyle(
              //               fontSize: Dimens.font_sp18,
              //               color: Colours.app_sub_black,
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "< 작가 정보 >",
                    style: TextStyle(
                      color: Colours.app_sub_black,
                      fontSize: Dimens.font_sp20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "${bookDetail.author}",
                    style: TextStyle(
                      color: Colours.app_sub_black,
                      fontSize: Dimens.font_sp18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${bookDetail.authorInfo}",
                    style: TextStyle(
                      color: Colours.app_sub_black,
                      fontSize: Dimens.font_sp18,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                  SizedBox(height: 15),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(height: 15),
                  Text(
                    key: _widgetKey,
                    "< 리뷰 관리 >",
                    style: TextStyle(
                      color: Colours.app_sub_black,
                      fontSize: Dimens.font_sp20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: List.generate(
                      riewList.length,
                      (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colours.app_sub_grey,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    StarScore(score: riewList[index].stars),
                                    Spacer(),
                                    Text("${riewList[index].userId} "),
                                    Text("|  ${riewList[index].writeTime}")
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(riewList[index].content),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  Divider(
                    thickness: 2,
                  ),
                  BookDetailReviewForm(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
