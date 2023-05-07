// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoDTO _$$_UserInfoDTOFromJson(Map<String, dynamic> json) =>
    _$_UserInfoDTO(
      isMembership: json['isMembership'] as bool,
      isAutoPayment: json['isAutoPayment'] as bool,
      membershipPayment: json['membershipPayment'] == null
          ? null
          : MembershipPayment.fromJson(
              json['membershipPayment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserInfoDTOToJson(_$_UserInfoDTO instance) =>
    <String, dynamic>{
      'isMembership': instance.isMembership,
      'isAutoPayment': instance.isAutoPayment,
      'membershipPayment': instance.membershipPayment,
    };
