import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/model/membership/membership.dart';

part 'user_membership_info_dto.freezed.dart';

part 'user_membership_info_dto.g.dart';

@unfreezed
class UserMembershipInfoDTO with _$UserMembershipInfoDTO {
  factory UserMembershipInfoDTO(
      { int? id,
       String? membershipStartTime,
       String? membershipEndTime,
       int? price,
       String? paymentTime,
      Membership? membership}) = _UserMembershipInfoDTO;

  factory UserMembershipInfoDTO.fromJson(Map<String, Object?> json) =>
      _$UserMembershipInfoDTOFromJson(json);
}
