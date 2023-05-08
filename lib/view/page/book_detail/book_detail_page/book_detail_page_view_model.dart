import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/repository/book_repository.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'book_detail_page_view_model.freezed.dart';

@unfreezed
class BookDetailPageModel with _$BookDetailPageModel {
  factory BookDetailPageModel({
    required BookDetailDTO book
}) = _BookDetailPageModel;
  }


class BookDetailViewModel extends StateNotifier<BookDetailPageModel?> {
  BookDetailViewModel(super.state);

  void notifyInit(int bookId) async {
   ResponseDTO responseDTO =  await BookRepository().getBookDetail(bookId);
   if(responseDTO.code == 1) {
     BookDetailPageModel book = BookDetailPageModel(book: responseDTO.data);
     state = book;
   } else {
     DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
   }
  }
}

final bookDetailPageProvider = StateNotifierProvider.family.autoDispose<BookDetailViewModel,
    BookDetailPageModel?, int>((ref, bookId) {
  return BookDetailViewModel(null)..notifyInit(bookId);
});