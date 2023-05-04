import 'package:intl/intl.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  factory User(
      {required int id,
      required String username,
      required String role,
      required bool isMembership,
      required bool isAutoPayment,
      required String joinTime}) = _User;

  factory User.fromJson(Map<String, Object?> json) {
    try {
      return _$UserFromJson(json);
    } catch (e) {
      print(e);
    }
    return _$UserFromJson(json);

  }
}
