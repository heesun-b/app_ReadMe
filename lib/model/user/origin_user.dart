import 'package:readme_app/model/big_category/big_category.dart';
import 'package:readme_app/model/file_info/file_dto.dart';
import 'package:readme_app/model/publisher/publisher.dart';
import 'package:readme_app/model/small_category/small_category.dart';

// 필수
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'origin_user.freezed.dart';
part 'origin_user.g.dart';

// 실행
// flutter pub run build_runner build

@freezed
class OriginUser with _$OriginUser {
  factory OriginUser({
    required int id,
    required String username,
    required String role,
    required bool isMembership,
    required bool isAutoPayment,
  }) = _OriginUser;

  factory OriginUser.fromJson(Map<String, Object?> json) => _$OriginUser(json);

}