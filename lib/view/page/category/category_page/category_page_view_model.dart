
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/repository/book_repository.dart';
import 'package:readme_app/model/small_category/small_category.dart';
import 'package:readme_app/sqflite/model/big_category/big_category.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/view/components/custom_dialog.dart';


part 'category_page_view_model.freezed.dart';


@unfreezed
class CategoryPageModel with _$CategoryPageModel {
  factory CategoryPageModel({
    required int bigCategoryId,
    required int smallCategoryId,
    required List<BigCategory> categoryTabs,
    required List<Book> books,
  required int page,
  required bool isLast
  }) = _CategoryPageModel;
}

class CategoryPageViewModel extends StateNotifier<CategoryPageModel?> {
  CategoryPageViewModel(super.state);

  void notifyInit() async {

    CategoryPageModel books = CategoryPageModel(books: [] , page: 0, isLast: false, categoryTabs: [], bigCategoryId: 0, smallCategoryId: 0);

    List<BigCategory> sqlCategoryTabs =  await MySqfliteInit.getBigCategoryList();

    List<BigCategory> categoryTabs = [];
    for (var categoryTab in sqlCategoryTabs) {
      categoryTabs.add(categoryTab.copyWith (
        smallCategory: [ SmallCategory(id: 0, name: "종합"), ...?categoryTab.smallCategory, ]
      ));
    }
   categoryTabs.insert(0, const BigCategory(id: 0, name: "종합"));
   ResponseDTO responseDTO = await BookRepository().mainList("all");
   if(responseDTO.code == 1) {
     MainDTO total = responseDTO.data;
     books =  books.copyWith(books: total.content , page: 0, isLast: total.last, categoryTabs: categoryTabs);
     state = books;
   } else {
     DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
   }

  }

  void categorySearch(int bigCategory, {int? smallCategory}) async {
    ResponseDTO responseDTO = await BookRepository().mainList("all", bigCategory: bigCategory, smallCategory: smallCategory);
    if(responseDTO.code == 1 ) {
      MainDTO total = responseDTO.data;
      state = state!.copyWith(books: total.content , page: 0, isLast: total.last, categoryTabs: state!.categoryTabs, bigCategoryId: bigCategory, smallCategoryId: smallCategory ?? 0);
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }

  void pageSearch(MainDTO mainDTO, int page, int bigCategory, {int? smallCategory}) async {
    state = state!.copyWith(books: [...state!.books, ...mainDTO.content] , page: page, isLast: mainDTO.last, categoryTabs: state!.categoryTabs, bigCategoryId: bigCategory, smallCategoryId: smallCategory ?? 0);
  }

  void bigCategoryIdSelect(int bigCategoryId) {
    state = state!.copyWith(bigCategoryId: bigCategoryId);
  }

  void addScarp(int bookId, ResponseDTO responseDTO) async {
    if(responseDTO.code == 401 ) {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    } else if (responseDTO.code == 1) {
      Book book = responseDTO.data;
      List<Book> newBooks = state!.books.where((element) => element.id != book.id).toList();
      newBooks.add(book);
      state = state!.copyWith(books: newBooks);
    }
  }

  void deleteScrap(int bookId, ResponseDTO responseDTO) async {
    if(responseDTO.code == 401 ) {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    } else if (responseDTO.code == 1) {
      // List<Book> newBooks = state!.books.where((element) => element.id != bookId).toList();
      List<Book> newBooks = state!.books;
      state = state!.copyWith(books: newBooks);
    }
  }
}

final categoryPageProvider =
StateNotifierProvider.autoDispose<CategoryPageViewModel, CategoryPageModel?>(
      (ref) {
    return CategoryPageViewModel(null)..notifyInit();
  },
);

