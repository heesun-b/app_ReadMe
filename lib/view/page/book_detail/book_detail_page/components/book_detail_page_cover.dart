import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/move.dart';
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
          child:
          CachedNetworkImage(
            imageUrl: model?.book.coverFile.fileUrl ?? "",
            placeholder : (context, url) => CircularProgressIndicator(),
          ),
        ),
        Container(
          height: 600,
          width: 500,
          child: Padding(
            padding: EdgeInsets.all(60),
            child:
            CachedNetworkImage(
              imageUrl:model?.book.coverFile.fileUrl ?? "",
              placeholder : (context, url) => CircularProgressIndicator(),
            ),
          ),
        ),

        model?.user != null ? Container() :
        Positioned(
            left: 280,
            top: 450,
            child: InkWell(
              onTap:(){
                Navigator.pushNamed(context, Move.bookViewerPage, arguments: model?.book);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colours.app_sub_white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
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
