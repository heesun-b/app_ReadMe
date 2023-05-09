// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'origin_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OriginUser _$OriginUserFromJson(Map<String, dynamic> json) {
  return _OriginUser.fromJson(json);
}

/// @nodoc
mixin _$OriginUser {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  bool get isMembership => throw _privateConstructorUsedError;
  bool get isAutoPayment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginUserCopyWith<OriginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginUserCopyWith<$Res> {
  factory $OriginUserCopyWith(
          OriginUser value, $Res Function(OriginUser) then) =
      _$OriginUserCopyWithImpl<$Res, OriginUser>;
  @useResult
  $Res call(
      {int id,
      String username,
      String role,
      bool isMembership,
      bool isAutoPayment});
}

/// @nodoc
class _$OriginUserCopyWithImpl<$Res, $Val extends OriginUser>
    implements $OriginUserCopyWith<$Res> {
  _$OriginUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? role = null,
    Object? isMembership = null,
    Object? isAutoPayment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isMembership: null == isMembership
          ? _value.isMembership
          : isMembership // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoPayment: null == isAutoPayment
          ? _value.isAutoPayment
          : isAutoPayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OriginUserCopyWith<$Res>
    implements $OriginUserCopyWith<$Res> {
  factory _$$_OriginUserCopyWith(
          _$_OriginUser value, $Res Function(_$_OriginUser) then) =
      __$$_OriginUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String role,
      bool isMembership,
      bool isAutoPayment});
}

/// @nodoc
class __$$_OriginUserCopyWithImpl<$Res>
    extends _$OriginUserCopyWithImpl<$Res, _$_OriginUser>
    implements _$$_OriginUserCopyWith<$Res> {
  __$$_OriginUserCopyWithImpl(
      _$_OriginUser _value, $Res Function(_$_OriginUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? role = null,
    Object? isMembership = null,
    Object? isAutoPayment = null,
  }) {
    return _then(_$_OriginUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isMembership: null == isMembership
          ? _value.isMembership
          : isMembership // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoPayment: null == isAutoPayment
          ? _value.isAutoPayment
          : isAutoPayment // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OriginUser with DiagnosticableTreeMixin implements _OriginUser {
  _$_OriginUser(
      {required this.id,
      required this.username,
      required this.role,
      required this.isMembership,
      required this.isAutoPayment});

  factory _$_OriginUser.fromJson(Map<String, dynamic> json) =>
      _$$_OriginUserFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String role;
  @override
  final bool isMembership;
  @override
  final bool isAutoPayment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OriginUser(id: $id, username: $username, role: $role, isMembership: $isMembership, isAutoPayment: $isAutoPayment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OriginUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('isMembership', isMembership))
      ..add(DiagnosticsProperty('isAutoPayment', isAutoPayment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OriginUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isMembership, isMembership) ||
                other.isMembership == isMembership) &&
            (identical(other.isAutoPayment, isAutoPayment) ||
                other.isAutoPayment == isAutoPayment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, role, isMembership, isAutoPayment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OriginUserCopyWith<_$_OriginUser> get copyWith =>
      __$$_OriginUserCopyWithImpl<_$_OriginUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OriginUserToJson(
      this,
    );
  }
}

abstract class _OriginUser implements OriginUser {
  factory _OriginUser(
      {required final int id,
      required final String username,
      required final String role,
      required final bool isMembership,
      required final bool isAutoPayment}) = _$_OriginUser;

  factory _OriginUser.fromJson(Map<String, dynamic> json) =
      _$_OriginUser.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get role;
  @override
  bool get isMembership;
  @override
  bool get isAutoPayment;
  @override
  @JsonKey(ignore: true)
  _$$_OriginUserCopyWith<_$_OriginUser> get copyWith =>
      throw _privateConstructorUsedError;
}
