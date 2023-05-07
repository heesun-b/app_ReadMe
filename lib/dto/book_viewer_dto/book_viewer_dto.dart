import 'package:readme_app/model/pageable/pageable.dart';
import 'package:readme_app/model/sort/sort.dart';
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
       required User user,
      }) = _BookViewerDTO;

  factory BookViewerDTO.fromJson(Map<String, Object?> json) =>
      _$BookViewerDTOFromJson(json);
}
