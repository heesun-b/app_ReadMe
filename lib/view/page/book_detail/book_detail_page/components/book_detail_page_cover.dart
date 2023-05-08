import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page_view_model.dart';

class BookDetailPageCover extends ConsumerWidget {
  int bookId;
  BookDetailPageCover({required this.bookId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BookDetailPageModel? model = ref.watch(bookDetailPageProvider(bookId));

    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Image.network(model?.book.coverFile.fileUrl ?? ""),
        ),
        Container(
          height: 600,
          width: 500,
          child: Padding(
            padding: EdgeInsets.all(60),
            child: Image.network(model?.book.coverFile.fileUrl ?? ""),
          ),
        ),
        Positioned(
            left: 280,
            top: 530,
            child: InkWell(
              onTap: (){
                // todo 수정
                Navigator.pushNamed(context, "/viewer");
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colours.app_sub_white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "미리보기",
                  style: TextStyle(
                    fontSize: Dimens.font_sp16,
                    color: Colours.app_sub_white,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
