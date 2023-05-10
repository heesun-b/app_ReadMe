import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'table_book.freezed.dart';
part 'table_book.g.dart';


@freezed
class TableBook with _$TableBook {
  factory TableBook({
    required int id,
    required String url,
    required String createdAt,
  }) = _TableBook;

  factory TableBook.fromJson(Map<String, Object?> json) => _$TableBookFromJson(json);

}