import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명


class TableUser {
  TableUser({
    required int id,
    required String username,
    required String role,
    required bool isMembership,
    required bool isAutoPayment,
  });


  factory TableUser.fromJson(Map<String, Object?> json) {
    return TableUser(
      id: json['id'] as int,
      username: json['username'] as String,
      role: json['role'] as String,
      isMembership: json['isMembership'] as int == 1 ? true : false,
      isAutoPayment: json['isAutoPayment'] as int == 1 ? true : false,
    );
  }
}