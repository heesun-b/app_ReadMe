import 'package:readme_app/dto/cart_dto/cart_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/model/membership_payment/membership_payment.dart';


part 'user_info_dto.freezed.dart';
part 'user_info_dto.g.dart';

@unfreezed
class UserInfoDTO with _$UserInfoDTO {
  factory UserInfoDTO({
    required bool isMembership,
    required bool isAutoPayment,
    MembershipPayment? membershipPayment,
  }) = _UserInfoDTO;

  factory UserInfoDTO.fromJson(Map<String, Object?> json) => _$UserInfoDTOFromJson(json);

}

