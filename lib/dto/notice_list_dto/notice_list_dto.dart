
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/notice_dto/notice_dto.dart';
import 'package:readme_app/model/pageable/pageable.dart';
import 'package:readme_app/model/sort/sort.dart';

part 'notice_list_dto.freezed.dart';
part 'notice_list_dto.g.dart';

@freezed
class NoticeListDTO with _$NoticeListDTO {
  factory NoticeListDTO({
    required List<NoticeDTO> content,
    required Pageable pageable,
    required bool last,
    required int totalPages,
    required int totalElements,
    required int size,
    required int number,
    required Sort sort,
    required bool first,
    required int numberOfElements,
    required bool empty,
  }) = _NoticeDTO;

  factory NoticeListDTO.fromJson(Map<String, Object?> json) => _$NoticeListDTOFromJson(json);

}