// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPageModel {
  UserInfoDTO? get userInfoDTO => throw _privateConstructorUsedError;
  set userInfoDTO(UserInfoDTO? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  set role(String? value) => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPageModelCopyWith<UserPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPageModelCopyWith<$Res> {
  factory $UserPageModelCopyWith(
          UserPageModel value, $Res Function(UserPageModel) then) =
      _$UserPageModelCopyWithImpl<$Res, UserPageModel>;
  @useResult
  $Res call(
      {UserInfoDTO? userInfoDTO, String? username, String? role, int? id});

  $UserInfoDTOCopyWith<$Res>? get userInfoDTO;
}

/// @nodoc
class _$UserPageModelCopyWithImpl<$Res, $Val extends UserPageModel>
    implements $UserPageModelCopyWith<$Res> {
  _$UserPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfoDTO = freezed,
    Object? username = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      userInfoDTO: freezed == userInfoDTO
          ? _value.userInfoDTO
          : userInfoDTO // ignore: cast_nullable_to_non_nullable
              as UserInfoDTO?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoDTOCopyWith<$Res>? get userInfoDTO {
    if (_value.userInfoDTO == null) {
      return null;
    }

    return $UserInfoDTOCopyWith<$Res>(_value.userInfoDTO!, (value) {
      return _then(_value.copyWith(userInfoDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserPageModelCopyWith<$Res>
    implements $UserPageModelCopyWith<$Res> {
  factory _$$_UserPageModelCopyWith(
          _$_UserPageModel value, $Res Function(_$_UserPageModel) then) =
      __$$_UserPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInfoDTO? userInfoDTO, String? username, String? role, int? id});

  @override
  $UserInfoDTOCopyWith<$Res>? get userInfoDTO;
}

/// @nodoc
class __$$_UserPageModelCopyWithImpl<$Res>
    extends _$UserPageModelCopyWithImpl<$Res, _$_UserPageModel>
    implements _$$_UserPageModelCopyWith<$Res> {
  __$$_UserPageModelCopyWithImpl(
      _$_UserPageModel _value, $Res Function(_$_UserPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfoDTO = freezed,
    Object? username = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_UserPageModel(
      userInfoDTO: freezed == userInfoDTO
          ? _value.userInfoDTO
          : userInfoDTO // ignore: cast_nullable_to_non_nullable
              as UserInfoDTO?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_UserPageModel implements _UserPageModel {
  _$_UserPageModel({this.userInfoDTO, this.username, this.role, this.id});

  @override
  UserInfoDTO? userInfoDTO;
  @override
  String? username;
  @override
  String? role;
  @override
  int? id;

  @override
  String toString() {
    return 'UserPageModel(userInfoDTO: $userInfoDTO, username: $username, role: $role, id: $id)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPageModelCopyWith<_$_UserPageModel> get copyWith =>
      __$$_UserPageModelCopyWithImpl<_$_UserPageModel>(this, _$identity);
}

abstract class _UserPageModel implements UserPageModel {
  factory _UserPageModel(
      {UserInfoDTO? userInfoDTO,
      String? username,
      String? role,
      int? id}) = _$_UserPageModel;

  @override
  UserInfoDTO? get userInfoDTO;
  set userInfoDTO(UserInfoDTO? value);
  @override
  String? get username;
  set username(String? value);
  @override
  String? get role;
  set role(String? value);
  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_UserPageModelCopyWith<_$_UserPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
