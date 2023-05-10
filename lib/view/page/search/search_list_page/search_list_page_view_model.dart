import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/repository/book_repository.dart';
import 'package:readme_app/repository/question_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_search.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'search_list_page_view_model.freezed.dart';

@unfreezed
class SearchListPageModel with _$SearchListPageModel {
  factory SearchListPageModel({
    required List<Book> books,
    required List<TableSearch> tableSearches,
    required TextEditingController textController,
    required bool isShow,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required GlobalKey<FormState> formKey,
    required FocusNode focusNode,
  }) = _SearchListPageModel;
}

class SearchListPageViewModel
    extends StateNotifier<SearchListPageModel?> {

  SearchListPageViewModel(super.state);

  void notifyInit() async {
    var searchList = await MySqfliteInit.getSearchTextOrderByCreatedAtDesc();
    SearchListPageModel searchModel = SearchListPageModel(
        books: [], tableSearches: searchList, textController: TextEditingController(text: ""), isShow: false,
        scaffoldKey: GlobalKey<ScaffoldState>(), formKey: GlobalKey<FormState>(), focusNode: FocusNode()
    );
    searchModel.focusNode.addListener(() {
      state = state!.copyWith(isShow: !searchModel.focusNode.hasFocus);
    });
    state = searchModel;
  }

  Future<void> deleteSearchKeyword (String keyword) async{
    await MySqfliteInit.deleteSearchText(keyword);
    var searchList = await MySqfliteInit.getSearchTextOrderByCreatedAtDesc();
    state = state!.copyWith (
      tableSearches: searchList,
    );
  }

  Future<void> search(ResponseDTO responseDTO, String keyword) async{
    if (responseDTO.code == 1) {
      await MySqfliteInit.insertSearchText(keyword);
      var searchList = await MySqfliteInit.getSearchTextOrderByCreatedAtDesc();
      state = state!.copyWith (
          books: responseDTO.data,
          tableSearches: searchList,
          isShow: true
      );
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg ?? "검색을 실패했습니다.");
    }
  }
}

final searchListPageProvider = StateNotifierProvider.autoDispose<
    SearchListPageViewModel, SearchListPageModel?>(
      (ref) {
    return SearchListPageViewModel(null)..notifyInit();
  },
);

