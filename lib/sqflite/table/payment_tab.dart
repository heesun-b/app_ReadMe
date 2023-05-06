import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'payment_tab.freezed.dart';
part 'payment_tab.g.dart';


@freezed
class PaymentTab with _$PaymentTab{
  factory PaymentTab({
    required String requestName,
    required String name,
  }) = _PaymentTab;

  factory PaymentTab.fromJson(Map<String, Object?> json) => _$PaymentTabFromJson(json);

}