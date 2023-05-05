import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'main_tab.freezed.dart';
part 'main_tab.g.dart';


@freezed
class MainTab with _$MainTab {
  factory MainTab({
    required String requestName,
    required String name,
  }) = _MainTab;

  factory MainTab.fromJson(Map<String, Object?> json) => _$MainTabFromJson(json);

}