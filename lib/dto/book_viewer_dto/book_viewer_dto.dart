import 'package:readme_app/model/big_category/big_category.dart';
import 'package:readme_app/model/file_info/file_dto.dart';
import 'package:readme_app/model/publisher/publisher.dart';
import 'package:readme_app/model/small_category/small_category.dart';
import 'package:readme_app/model/user/user.dart';

import '../../model/book/book.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'book_viewer_dto.freezed.dart';
part 'book_viewer_dto.g.dart';

@freezed
class BookViewerDTO with _$BookViewerDTO {
  factory BookViewerDTO(
      {required Book book,
        required int id,
        required Publisher publisher,
        required String title,
        required String author,
        required int price,
        required String introduction,
        required BigCategory bigCategory,
        required SmallCategory smallCategory,
        required String authorInfo,
        required bool isHeart,
        required double stars,
        required FileDTO epubFile,
        required FileDTO coverFile
      }) = _BookViewerDTO;

  factory BookViewerDTO.fromJson(Map<String, Object?> json) =>
      _$BookViewerDTOFromJson(json);
}
