import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/model/user/user.dart';

// 파일명
part 'book_viewer_page_view_model.freezed.dart';

@unfreezed
class BookViewerPageModel with _$BookViewerPageModel {
  factory BookViewerPageModel({
    required Book book,
    required User user,
  }) = _BookViewerPageModel;
}

class BookViewerPageViewModel extends StateNotifier<BookViewerPageModel?> {
  BookViewerPageViewModel(super.state);

  void notifyInit() async {
    BookViewerPageModel initBook = BookViewerPageModel(book: null, user: null);
    ResponseDTO responseDTO = await BookRepository().searchViewerBook(bookId, userId);

    state = initBook;
  }
}

final bookViewerPageProvider = StateNotifierProvider.autoDispose<
    BookViewerPageViewModel, BookViewerPageModel?>(
  (ref) {
    return BookViewerPageViewModel(null)..notifyInit();
  },
);
