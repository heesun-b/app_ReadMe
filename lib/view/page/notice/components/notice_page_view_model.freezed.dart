// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoticePageModel {
  NoticeListDTO? get noticeList => throw _privateConstructorUsedError;
  set noticeList(NoticeListDTO? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationPageModelCopyWith<NoticePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPageModelCopyWith<$Res> {
  factory $NotificationPageModelCopyWith(NoticePageModel value,
          $Res Function(NoticePageModel) then) =
      _$NotificationPageModelCopyWithImpl<$Res, NoticePageModel>;
  @useResult
  $Res call({NoticeListDTO? noticeList});

  $NoticeListDTOCopyWith<$Res>? get noticeList;
}

/// @nodoc
class _$NotificationPageModelCopyWithImpl<$Res,
        $Val extends NoticePageModel>
    implements $NotificationPageModelCopyWith<$Res> {
  _$NotificationPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeList = freezed,
  }) {
    return _then(_value.copyWith(
      noticeList: freezed == noticeList
          ? _value.noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as NoticeListDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoticeListDTOCopyWith<$Res>? get noticeList {
    if (_value.noticeList == null) {
      return null;
    }

    return $NoticeListDTOCopyWith<$Res>(_value.noticeList!, (value) {
      return _then(_value.copyWith(noticeList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationPageModelCopyWith<$Res>
    implements $NotificationPageModelCopyWith<$Res> {
  factory _$$_NotificationPageModelCopyWith(_$_NotificationPageModel value,
          $Res Function(_$_NotificationPageModel) then) =
      __$$_NotificationPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoticeListDTO? noticeList});

  @override
  $NoticeListDTOCopyWith<$Res>? get noticeList;
}

/// @nodoc
class __$$_NotificationPageModelCopyWithImpl<$Res>
    extends _$NotificationPageModelCopyWithImpl<$Res, _$_NotificationPageModel>
    implements _$$_NotificationPageModelCopyWith<$Res> {
  __$$_NotificationPageModelCopyWithImpl(_$_NotificationPageModel _value,
      $Res Function(_$_NotificationPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeList = freezed,
  }) {
    return _then(_$_NotificationPageModel(
      noticeList: freezed == noticeList
          ? _value.noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as NoticeListDTO?,
    ));
  }
}

/// @nodoc

class _$_NotificationPageModel implements _NoticePageModel {
  _$_NotificationPageModel({this.noticeList});

  @override
  NoticeListDTO? noticeList;

  @override
  String toString() {
    return 'NotificationPageModel(noticeList: $noticeList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationPageModelCopyWith<_$_NotificationPageModel> get copyWith =>
      __$$_NotificationPageModelCopyWithImpl<_$_NotificationPageModel>(
          this, _$identity);
}

abstract class _NoticePageModel implements NoticePageModel {
  factory _NoticePageModel({NoticeListDTO? noticeList}) =
      _$_NotificationPageModel;

  @override
  NoticeListDTO? get noticeList;
  set noticeList(NoticeListDTO? value);
  @override
  @JsonKey(ignore: true)
  _$$_NotificationPageModelCopyWith<_$_NotificationPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
