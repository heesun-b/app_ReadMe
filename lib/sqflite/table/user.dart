import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'user.freezed.dart';
part 'user.g.dart';


@freezed
class User with _$User {
  factory User({
    required int id,
    required String username
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}