// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'origin_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OriginUser _$$_OriginUserFromJson(Map<String, dynamic> json) =>
    _$_OriginUser(
      id: json['id'] as int,
      username: json['username'] as String,
      role: json['role'] as String,
      isMembership: json['isMembership'] as bool,
      isAutoPayment: json['isAutoPayment'] as bool,
    );

Map<String, dynamic> _$$_OriginUserToJson(_$_OriginUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'role': instance.role,
      'isMembership': instance.isMembership,
      'isAutoPayment': instance.isAutoPayment,
    };
