import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/review_dto/review_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/repository/review_repository.dart';
import 'package:readme_app/repository/scrap_repository.dart';
import 'package:readme_app/view/components/custom_dialog.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page_view_model.dart';
import 'package:readme_app/view/page/category/category_page/category_page_view_model.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';
import 'package:readme_app/view/page/review/review_page_view_model.dart';

final scrapControllerProvider = Provider<ScrapController>((ref) {
  return ScrapController(ref);
});

class ScrapController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  ScrapController(this.ref);

  Future<void> insert (int bookId) async {
    ResponseDTO responseDTO = await ScrapRepository().addScrap(bookId);
    ref.read(categoryPageProvider.notifier).addScarp(bookId, responseDTO);
    ref.read(mainPageProvider.notifier).addScarp(bookId, responseDTO);
    ref.read(bookDetailPageProvider(bookId).notifier).addScrap(bookId, responseDTO);
  }

  Future<void> delete (int bookId) async {
    ResponseDTO responseDTO = await ScrapRepository().deleteScrap(bookId);
    ref.read(categoryPageProvider.notifier).deleteScrap(bookId, responseDTO);
    ref.read(mainPageProvider.notifier).deleteScrap(bookId, responseDTO);
    ref.read(bookDetailPageProvider(bookId).notifier).deleteScrap(bookId, responseDTO);
  }


}