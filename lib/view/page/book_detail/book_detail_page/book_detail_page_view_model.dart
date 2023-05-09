import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/review_dto/review_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/pageable/pageable.dart';
import 'package:readme_app/model/review/review.dart';
import 'package:readme_app/repository/book_repository.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'book_detail_page_view_model.freezed.dart';

@unfreezed
class BookDetailPageModel with _$BookDetailPageModel {
  factory BookDetailPageModel({
    required BookDetailDTO book,
    required Pageable pageable,
    required bool last,
    required int totalPages,
    required TextEditingController textEditingController,
    required double stars,
    TableUser? user,
  }) = _BookDetailPageModel;
}


class BookDetailViewModel extends StateNotifier<BookDetailPageModel?> {
  BookDetailViewModel(super.state);

  void notifyInit(int bookId) async {
   ResponseDTO responseDTO =  await BookRepository().getBookDetail(bookId);
   if(responseDTO.code == 1) {
     BookDetailDTO bookDetailDTO = responseDTO.data;
     BookDetailPageModel book = BookDetailPageModel(
         book: bookDetailDTO, pageable: bookDetailDTO.reviews.pageable,
         last: bookDetailDTO.reviews.last, totalPages: bookDetailDTO.reviews.totalPages,
         textEditingController: TextEditingController(), stars: 0.0
     );
     state = book;
   } else {
     DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
   }
  }

  void getReviews (
      BuildContext context,
      ResponseDTO responseDTO, {isRefresh = false}
  ) async {
    if(responseDTO.code == 1) {
      ReviewDTO reviewDTO = responseDTO.data;

      List<Review> reviewList = [];
      if (!isRefresh){
        reviewList.addAll(state!.book.reviews.content);
      }
      reviewList.addAll(reviewDTO.content);

      var bookDetailPageModel = state!.copyWith(
        last: reviewDTO.last,
        totalPages: reviewDTO.totalPages,
        book: state!.book.copyWith (
            reviews: state!.book.reviews.copyWith (
              content: reviewList,
              pageable: reviewDTO.pageable,
            )
        ),
        pageable: reviewDTO.pageable,
      );
      state = bookDetailPageModel;
      DialogUtil.dialogShow(context, responseDTO.msg);
    } else {
      DialogUtil.dialogShow(context, responseDTO.msg);
    }
  }

}

final bookDetailPageProvider = StateNotifierProvider.family.autoDispose<BookDetailViewModel, BookDetailPageModel?, int>((ref, bookId) {
  return BookDetailViewModel(null)..notifyInit(bookId);
});