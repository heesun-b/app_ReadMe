// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoDTO _$UserInfoDTOFromJson(Map<String, dynamic> json) {
  return _UserInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$UserInfoDTO {
  bool get isMembership => throw _privateConstructorUsedError;
  set isMembership(bool value) => throw _privateConstructorUsedError;
  bool get isAutoPayment => throw _privateConstructorUsedError;
  set isAutoPayment(bool value) => throw _privateConstructorUsedError;
  MembershipPayment? get membershipPayment =>
      throw _privateConstructorUsedError;
  set membershipPayment(MembershipPayment? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoDTOCopyWith<UserInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDTOCopyWith<$Res> {
  factory $UserInfoDTOCopyWith(
          UserInfoDTO value, $Res Function(UserInfoDTO) then) =
      _$UserInfoDTOCopyWithImpl<$Res, UserInfoDTO>;
  @useResult
  $Res call(
      {bool isMembership,
      bool isAutoPayment,
      MembershipPayment? membershipPayment});

  $MembershipPaymentCopyWith<$Res>? get membershipPayment;
}

/// @nodoc
class _$UserInfoDTOCopyWithImpl<$Res, $Val extends UserInfoDTO>
    implements $UserInfoDTOCopyWith<$Res> {
  _$UserInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMembership = null,
    Object? isAutoPayment = null,
    Object? membershipPayment = freezed,
  }) {
    return _then(_value.copyWith(
      isMembership: null == isMembership
          ? _value.isMembership
          : isMembership // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoPayment: null == isAutoPayment
          ? _value.isAutoPayment
          : isAutoPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      membershipPayment: freezed == membershipPayment
          ? _value.membershipPayment
          : membershipPayment // ignore: cast_nullable_to_non_nullable
              as MembershipPayment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MembershipPaymentCopyWith<$Res>? get membershipPayment {
    if (_value.membershipPayment == null) {
      return null;
    }

    return $MembershipPaymentCopyWith<$Res>(_value.membershipPayment!, (value) {
      return _then(_value.copyWith(membershipPayment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserInfoDTOCopyWith<$Res>
    implements $UserInfoDTOCopyWith<$Res> {
  factory _$$_UserInfoDTOCopyWith(
          _$_UserInfoDTO value, $Res Function(_$_UserInfoDTO) then) =
      __$$_UserInfoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isMembership,
      bool isAutoPayment,
      MembershipPayment? membershipPayment});

  @override
  $MembershipPaymentCopyWith<$Res>? get membershipPayment;
}

/// @nodoc
class __$$_UserInfoDTOCopyWithImpl<$Res>
    extends _$UserInfoDTOCopyWithImpl<$Res, _$_UserInfoDTO>
    implements _$$_UserInfoDTOCopyWith<$Res> {
  __$$_UserInfoDTOCopyWithImpl(
      _$_UserInfoDTO _value, $Res Function(_$_UserInfoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMembership = null,
    Object? isAutoPayment = null,
    Object? membershipPayment = freezed,
  }) {
    return _then(_$_UserInfoDTO(
      isMembership: null == isMembership
          ? _value.isMembership
          : isMembership // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoPayment: null == isAutoPayment
          ? _value.isAutoPayment
          : isAutoPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      membershipPayment: freezed == membershipPayment
          ? _value.membershipPayment
          : membershipPayment // ignore: cast_nullable_to_non_nullable
              as MembershipPayment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoDTO with DiagnosticableTreeMixin implements _UserInfoDTO {
  _$_UserInfoDTO(
      {required this.isMembership,
      required this.isAutoPayment,
      this.membershipPayment});

  factory _$_UserInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoDTOFromJson(json);

  @override
  bool isMembership;
  @override
  bool isAutoPayment;
  @override
  MembershipPayment? membershipPayment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoDTO(isMembership: $isMembership, isAutoPayment: $isAutoPayment, membershipPayment: $membershipPayment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInfoDTO'))
      ..add(DiagnosticsProperty('isMembership', isMembership))
      ..add(DiagnosticsProperty('isAutoPayment', isAutoPayment))
      ..add(DiagnosticsProperty('membershipPayment', membershipPayment));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoDTOCopyWith<_$_UserInfoDTO> get copyWith =>
      __$$_UserInfoDTOCopyWithImpl<_$_UserInfoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoDTOToJson(
      this,
    );
  }
}

abstract class _UserInfoDTO implements UserInfoDTO {
  factory _UserInfoDTO(
      {required bool isMembership,
      required bool isAutoPayment,
      MembershipPayment? membershipPayment}) = _$_UserInfoDTO;

  factory _UserInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_UserInfoDTO.fromJson;

  @override
  bool get isMembership;
  set isMembership(bool value);
  @override
  bool get isAutoPayment;
  set isAutoPayment(bool value);
  @override
  MembershipPayment? get membershipPayment;
  set membershipPayment(MembershipPayment? value);
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoDTOCopyWith<_$_UserInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
