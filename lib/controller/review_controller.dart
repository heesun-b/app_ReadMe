import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/review_dto/review_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/repository/review_repository.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page_view_model.dart';

final reviewControllerProvider = Provider<ReviewController>((ref) {
  return ReviewController(ref);
});

class ReviewController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  ReviewController(this.ref);

  Future<void> getReviews(int bookId, int page) async {
    ResponseDTO responseDTO = await ReviewRepository().getReviews(bookId, page);
    if (responseDTO.code == 401) {
      Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
    } else if (responseDTO.code == 1) {
        ReviewDTO reviewDTO = responseDTO.data;
        responseDTO.data = reviewDTO;
        ref.read(bookDetailPageProvider(bookId).notifier).getReviews(mContext!, responseDTO);
    } else {
      ref.read(bookDetailPageProvider(bookId).notifier).getReviews(mContext!, responseDTO);
    }
  }

  Future<void> save(int bookId, double stars, String content) async {
    ResponseDTO responseDTO = await ReviewRepository().save(bookId, stars, content);
    if (responseDTO.code == 401) {
      Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
    } else if (responseDTO.code == 1) {
      ReviewDTO reviewDTO = responseDTO.data;
      responseDTO.data = reviewDTO;
      ref.read(bookDetailPageProvider(bookId).notifier).getReviews(mContext!, responseDTO, isRefresh: true);
    } else {
      ref.read(bookDetailPageProvider(bookId).notifier).getReviews(mContext!, responseDTO);
    }
  }
}