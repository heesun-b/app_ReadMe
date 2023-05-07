import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/util/epub/epub_view.dart';

// 파일명
part 'book_viewer_page_view_model.freezed.dart';


@unfreezed
class BookViewerPageModel with _$BookViewerPageModel {
  factory BookViewerPageModel(
      {
        required String title,
        required String epubFilePath,
        required String coverFilePath,
        required int price,
        required bool isHeart,
        required bool isBookMark,
        required bool isShowAppBarAndBottomSheet,
        required double currentSliderValue,
        required double fontSize,
        TableUser? user,
        required EpubController epubReaderController,
      }) = _BookViewerPageModel;

}

class BookViewerPageViewModel extends StateNotifier<BookViewerPageModel?> {


  BookViewerPageViewModel(super.state);

  void notifyInit(Map<String, dynamic> bookDetailData) async {
    BookViewerPageModel initBook = BookViewerPageModel(
      title: "",
      epubFilePath: "",
      coverFilePath: "",
      price: 0,
      isHeart: false,
      isBookMark: false,
      isShowAppBarAndBottomSheet: false,
      currentSliderValue: 0,
      fontSize: 0,
      user: null,
      epubReaderController: EpubController(document: EpubDocument.openUrl("https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/60f2fc61-323d-410b-b501-3d0a76beed5d-book1.epub"))
    );

    initBook.user = await MySqfliteInit.getUser();


    BookDetailMockData bookDetail = bookDetailData["bookDetail"];

    print("bookDetail.epubFilePath: ${bookDetail.epubFilePath}" );
    initBook = initBook.copyWith(
        title: bookDetail.title,
        epubFilePath: bookDetail.epubFilePath,
        coverFilePath: bookDetail.coverFilePath,
        price: bookDetail.price,
        isHeart: bookDetail.isHeart,
        isBookMark: false,
        isShowAppBarAndBottomSheet: false,
        currentSliderValue: 100,
        fontSize: Dimens.font_sp18,
        user: initBook.user,
        epubReaderController: EpubController(document: EpubDocument.openUrl(bookDetail.epubFilePath))
    );


    state = initBook;
  }

  void changeIsShowAppBarAndBottomSheet(value) async {
    state = state!.copyWith(isShowAppBarAndBottomSheet: value);
  }
}

final bookViewerPageProvider = StateNotifierProvider.family.autoDispose<
    BookViewerPageViewModel, BookViewerPageModel?, Map<String, dynamic>>(
  (ref, bookDetailData) {
    return BookViewerPageViewModel(null)..notifyInit(bookDetailData);
  },
);
