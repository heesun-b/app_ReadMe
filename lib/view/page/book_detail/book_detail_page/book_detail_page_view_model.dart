import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/review_dto/review_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/pageable/pageable.dart';
import 'package:readme_app/model/review/review.dart';
import 'package:readme_app/repository/book_repository.dart';
import 'package:readme_app/sqflite/sqflite.dart';
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
    ResponseDTO responseDTO = await BookRepository().getBookDetail(bookId);
    if (responseDTO.code == 1) {
      BookDetailDTO bookDetailDTO = responseDTO.data;
      var user = await MySqfliteInit.getUser();
      BookDetailPageModel book = BookDetailPageModel(
          book: bookDetailDTO,
          pageable: bookDetailDTO.reviews.pageable,
          last: bookDetailDTO.reviews.last,
          totalPages: bookDetailDTO.reviews.totalPages,
          textEditingController: TextEditingController(),
          stars: 0.0,
          user: user
      );
      state = book;
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }

  void getReviews(BuildContext context,
      ResponseDTO responseDTO, {isRefresh = true}) async {
    if (responseDTO.code == 1) {
      ReviewDTO reviewDTO = responseDTO.data;

      List<Review> reviewList = [];
      if (!isRefresh) {
        reviewList.addAll(state!.book.reviews.content);
      }
      reviewList.addAll(reviewDTO.content);

      ReviewDTO newReviews = state!.book.reviews.copyWith(
        content: reviewList,
        pageable: reviewDTO.pageable,
      );

      BookDetailDTO newBook = state!.book.copyWith(reviews: newReviews);

      var bookDetailPageModel = state!.copyWith(
        last: reviewDTO.last,
        totalPages: reviewDTO.totalPages,
        book: newBook,
        pageable: reviewDTO.pageable,
      );
      state = bookDetailPageModel;

    } else {
      DialogUtil.dialogShow(context, responseDTO.msg);
    }
  }

  void addScrap(int bookId, ResponseDTO responseDTO) async {
    if (responseDTO.code == 401) {
      DialogUtil.dialogShow(navigatorKey.currentContext!, "스크랩 실패");
    } else if (responseDTO.code == 1) {
      Book responseBook = responseDTO.data;
      BookDetailDTO originBook = state!.book;

      BookDetailDTO newBook = state!.book.copyWith(isHeart: responseBook.isHeart);
      state = state!.copyWith(book: newBook);
    }
  }

  void deleteScrap(int bookId, ResponseDTO responseDTO) async {
    if (responseDTO.code == 401) {
      DialogUtil.dialogShow(navigatorKey.currentContext!, "스크랩 취소 실패");
    } else if (responseDTO.code == 1) {
      BookDetailDTO newBook = state!.book.copyWith(isHeart: false);
      state = state!.copyWith(book: newBook);
    }
  }
}

final bookDetailPageProvider = StateNotifierProvider.family.autoDispose<
    BookDetailViewModel,
    BookDetailPageModel?,
    int>((ref, bookId) {
  return BookDetailViewModel(null)
    ..notifyInit(bookId);
});