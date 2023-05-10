import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/review_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page_view_model.dart';

class BookDetailReviewForm extends ConsumerWidget {

  final int bookId;

  BookDetailReviewForm(this.bookId);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BookDetailPageModel? model = ref.watch(bookDetailPageProvider(bookId));

    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: const Text(
              "< 리뷰 작성 >",
              style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: Colours.app_sub_darkgrey,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RatingBar.builder(
                    initialRating: model?.stars ?? 0,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 18,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      model?.stars = rating;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: model?.textEditingController,
                    decoration: const InputDecoration(
                      hintText: "내용을 입력하세요",
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // 등록 후 위치 이동
                        ref.read(reviewControllerProvider).save(
                            model?.book.id ?? 0, model?.stars ?? 0.0,
                            model?.textEditingController.text ?? "",
                            model?.pageable.pageNumber ?? 0,
                            model?.pageable.pageSize ?? 0
                        );

                        model?.textEditingController.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colours.app_sub_black,
                        foregroundColor: Colours.app_sub_white,
                        textStyle: const TextStyle(fontSize: Dimens.font_sp14),
                      ),
                      child: const Text("등록"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
