
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';


part 'category_page_view_model.freezed.dart';
@unfreezed
class CategoryPageModel with _$CategoryPageModel {
  factory CategoryPageModel({
required List<Book> books,
  required int page,
  required bool isLast,
  }) = _CategoryPageModel;
}

class CategoryPageViewModel extends StateNotifier<CategoryPageModel?> {
  CategoryPageViewModel(super.state);

  void notifyInit() async {
   ResponseDTO responseDTO = await BookRepository().mainList(BookSearchType.total);
   MainDTO total = MainDTO.fromJson(responseDTO.data);
   CategoryPageModel books = CategoryPageModel(books: total.content , page: 0, isLast: false);
   state = books;
  }
}

final categoryPageProvider =
StateNotifierProvider.autoDispose<CategoryPageViewModel, CategoryPageModel?>(
      (ref) {
    return CategoryPageViewModel(null)..notifyInit();
  },
);