import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page_view_model.dart';

class BookDetailInfo extends ConsumerWidget {

  int bookId;
  BookDetailInfo({required this.bookId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    BookDetailPageModel? model = ref.watch(bookDetailPageProvider(bookId));

    return Column(
      children: [
        _buildCategory(model?.book),
        SizedBox(height: 20),
        _buildTitle(model?.book),
        SizedBox(height: 8),
        _buildAuthorStore(model?.book),
        SizedBox(height: 20),
        _buildPrice(model?.book),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }

  Widget _buildCategory(BookDetailDTO? book) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colours.app_sub_darkgrey,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            book?.bigCategory.name ?? "",
            style: TextStyle(
              fontSize: Dimens.font_sp14,
              color: Colours.app_sub_black,
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colours.app_sub_darkgrey,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            book?.smallCategory.name ?? "",
            style: TextStyle(
              fontSize: Dimens.font_sp14,
              color: Colours.app_sub_black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(BookDetailDTO? book) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            book?.title ?? "",
            style: TextStyle(
              fontSize: Dimens.font_sp30,
              fontWeight: FontWeight.w700,
              color: Colours.app_sub_black,
            ),
          ),
        ),
      ],
    );
  }

  Row _buildAuthorStore(BookDetailDTO? book) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          book?.author ?? "",
          style: TextStyle(
            fontSize: Dimens.font_sp24,
            color: Colours.app_sub_black,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "/ ${book?.publisher.businessName}",
          style: TextStyle(
            fontSize: Dimens.font_sp24,
            color: Colours.app_sub_black,
          ),
        ),
      ],
    );
  }

  Widget _buildPrice(BookDetailDTO? book) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "소장가 ${book?.price ?? "0"}원",
          style: TextStyle(
            fontSize: Dimens.font_sp20,
            color: Colours.app_sub_black,
          ),
        ),
      ],
    );
  }
}
