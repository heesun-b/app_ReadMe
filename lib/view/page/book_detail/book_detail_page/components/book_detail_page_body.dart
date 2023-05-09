import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/review_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/util/star_score/star_score.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page_view_model.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_review_form.dart';

class BookDetailPageBody extends ConsumerWidget {
  int bookId;

  BookDetailPageBody({required this.bookId, Key? key}) : super(key: key);

  final GlobalKey _widgetKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BookDetailPageModel? model = ref.watch(bookDetailPageProvider(bookId));
    return Column(
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     TextButton(
        //       style: TextButton.styleFrom(
        //         textStyle: const TextStyle(
        //           fontSize: Dimens.font_sp20,
        //         ),
        //       ),
        //       onPressed: () {
        //         // setState(() {
        //         //   _selectedButtonIndex = 0;
        //         // });
        //       },
        //       child: Text(
        //         "도서 정보",
        //         style: TextStyle(
        //           color: _selectedButtonIndex == 0
        //               ? Colours.app_sub_black
        //               : Colours.app_sub_black,
        //           fontSize: Dimens.font_sp20,
        //           fontWeight: _selectedButtonIndex == 0
        //               ? FontWeight.bold
        //               : FontWeight.normal,
        //         ),
        //       ),
        //     ),
        //     TextButton(
        //       style: TextButton.styleFrom(
        //         textStyle: const TextStyle(fontSize: Dimens.font_sp20),
        //       ),
        //       onPressed: () {
        //         Scrollable.ensureVisible(_widgetKey.currentContext!,
        //             duration: Duration(milliseconds: 300),
        //             curve: Curves.easeInOut,
        //             alignment: 0);
        //       },
        //       child: Text(
        //         "리뷰 관리",
        //         style: TextStyle(
        //           color: _selectedButtonIndex == 1
        //               ? Colours.app_sub_black
        //               : Colours.app_sub_black,
        //           fontSize: Dimens.font_sp20,
        //           fontWeight: _selectedButtonIndex == 1
        //               ? FontWeight.bold
        //               : FontWeight.normal,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "< 책 소개 >",
                style: TextStyle(
                    color: Colours.app_sub_black,
                    fontSize: Dimens.font_sp20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              Text(
                model?.book.title ?? "",
                style: const TextStyle(
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
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "< 작가 정보 >",
                    style: TextStyle(
                      color: Colours.app_sub_black,
                      fontSize: Dimens.font_sp20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    model?.book.author ?? "",
                    style: const TextStyle(
                      color: Colours.app_sub_black,
                      fontSize: Dimens.font_sp18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    model?.book.authorInfo ?? "",
                    style: const TextStyle(
                      color: Colours.app_sub_black,
                      fontSize: Dimens.font_sp18,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 15),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(height: 40),
                  Text(
                    key: _widgetKey,
                    "< 리뷰 관리 >",
                    style: const TextStyle(
                      color: Colours.app_sub_black,
                      fontSize: Dimens.font_sp20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: List.generate(
                      model?.book.reviews.content.length ?? 0,
                      (index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colours.app_sub_grey,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    StarScore(score: model?.book.reviews.content[index].stars ?? 0),
                                    Spacer(),
                                    Text("${model?.book.reviews.content[index].user.username ?? ""} ", style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                // const SizedBox(height: 10),
                                Row(
                                  children: [
                                    const Spacer(),

                                    Text(model?.book.reviews.content[index].writeTime ?? "")
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(model?.book.reviews.content[index].content ?? ""),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),


                  model?.last ?? true ? const SizedBox() : Column(
                    children: [
                      const SizedBox(height: 30),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            ref.read(reviewControllerProvider).getReviews(model.book.id, model.pageable.pageNumber + 1);
                          },
                          child: Center(child: Text("( ${model!.pageable.pageNumber + 1} / ${model.totalPages} ) 더보기")),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const Divider(
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
