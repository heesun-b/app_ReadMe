import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'table_search.freezed.dart';
part 'table_search.g.dart';


@freezed
class TableSearch with _$TableSearch {
  factory TableSearch({
    required String searchText,
    required String createdAt,
  }) = _TableSearch;

  factory TableSearch.fromJson(Map<String, Object?> json) => _$TableSearchFromJson(json);

}