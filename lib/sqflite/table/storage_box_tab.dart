import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'storage_box_tab.freezed.dart';
part 'storage_box_tab.g.dart';


@freezed
class StorageBoxTab with _$StorageBoxTab {
  factory StorageBoxTab({
    required String requestName,
    required String name,
  }) = _StorageBoxTab;

  factory StorageBoxTab.fromJson(Map<String, Object?> json) => _$StorageBoxTabFromJson(json);

}