import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/model/big_category/big_category.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/file_info/file_dto.dart';
import 'package:readme_app/model/publisher/publisher.dart';
import 'package:readme_app/model/review/review.dart';
import 'package:readme_app/model/small_category/small_category.dart';
import 'package:readme_app/model/user/user.dart';

// 파일명
part 'book_detail_dto.freezed.dart';
part 'book_detail_dto.g.dart';

@freezed
class BookDetailDTO with _$BookDetailDTO {
  factory BookDetailDTO({
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
    required FileDTO coverFile,
    List<Review>? reviews,
  }) = _BookDetailDTO;

  factory BookDetailDTO.fromJson(Map<String, Object?> json) => _$BookDetailDTOFromJson(json);


}
