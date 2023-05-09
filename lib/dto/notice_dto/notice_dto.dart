import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/model/file_info/file_dto.dart';
import 'package:readme_app/model/pageable/pageable.dart';
import 'package:readme_app/model/sort/sort.dart';

// 파일명
part 'notice_dto.freezed.dart';
part 'notice_dto.g.dart';

@freezed
class NoticeDTO with _$NoticeDTO {
  factory NoticeDTO({
    required int id,
    required String title,
    required String content,
    required FileDTO imageFile
  }) = _NoticeDTO;

  factory NoticeDTO.fromJson(Map<String, Object?> json) => _$NoticeDTOFromJson(json);

}