import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';

// 파일명
part 'book_viewer_page_view_model.freezed.dart';

final mContext = navigatorKey.currentContext;

@unfreezed
class BookViewerPageModel with _$BookViewerPageModel {
  factory BookViewerPageModel(
      {required String title,
      required String epubFilePath,
      required String coverFilePath,
      required int price,
      required bool isHeart,
      required bool isBookMark,
      required bool isShowAppBarAndBottomSheet,
      required double currentSliderValue,
      required double fontSize,
      TableUser? user}) = _BookViewerPageModel;

}

class BookViewerPageViewModel extends StateNotifier<BookViewerPageModel?> {
  BookViewerPageViewModel(super.state);

  void notifyInit() async {
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
    );

    initBook.user = await MySqfliteInit.getUser();

    final arguments =
        ModalRoute.of(mContext!)!.settings.arguments as Map<String, dynamic>;

    BookDetailMockData bookDetailMockData = arguments["bookDetail"];

    initBook = initBook.copyWith(
        title: bookDetailMockData.title,
        epubFilePath: bookDetailMockData.epubFilePath,
        coverFilePath: bookDetailMockData.coverFilePath,
        price: bookDetailMockData.price,
        isHeart: bookDetailMockData.isHeart,
        isBookMark: false,
        isShowAppBarAndBottomSheet: false,
        currentSliderValue: 100,
        fontSize: Dimens.font_sp18,
        user: initBook.user,
    );
    state = initBook;
  }

  void changeIsShowAppBarAndBottomSheet(value) async {
    state = state!.copyWith(isShowAppBarAndBottomSheet: value);
  }
}

final bookViewerPageProvider = StateNotifierProvider.autoDispose<
    BookViewerPageViewModel, BookViewerPageModel?>(
  (ref) {
    return BookViewerPageViewModel(null)..notifyInit();
  },
);
