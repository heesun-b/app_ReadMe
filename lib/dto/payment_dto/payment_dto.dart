import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';

@freezed
class PaymentDTO with _$PaymentDTO {
  factory PaymentDTO({
    required int id,
    required String type,
  }) = _PaymentDTO;

  factory PaymentDTO.fromJson(Map<String, Object?> json) => _$PaymentDTOFromJson(json);

}
