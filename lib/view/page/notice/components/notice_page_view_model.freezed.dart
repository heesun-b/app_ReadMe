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
  $NoticePageModelCopyWith<NoticePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticePageModelCopyWith<$Res> {
  factory $NoticePageModelCopyWith(
          NoticePageModel value, $Res Function(NoticePageModel) then) =
      _$NoticePageModelCopyWithImpl<$Res, NoticePageModel>;
  @useResult
  $Res call({NoticeListDTO? noticeList});

  $NoticeListDTOCopyWith<$Res>? get noticeList;
}

/// @nodoc
class _$NoticePageModelCopyWithImpl<$Res, $Val extends NoticePageModel>
    implements $NoticePageModelCopyWith<$Res> {
  _$NoticePageModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_NoticePageModelCopyWith<$Res>
    implements $NoticePageModelCopyWith<$Res> {
  factory _$$_NoticePageModelCopyWith(
          _$_NoticePageModel value, $Res Function(_$_NoticePageModel) then) =
      __$$_NoticePageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoticeListDTO? noticeList});

  @override
  $NoticeListDTOCopyWith<$Res>? get noticeList;
}

/// @nodoc
class __$$_NoticePageModelCopyWithImpl<$Res>
    extends _$NoticePageModelCopyWithImpl<$Res, _$_NoticePageModel>
    implements _$$_NoticePageModelCopyWith<$Res> {
  __$$_NoticePageModelCopyWithImpl(
      _$_NoticePageModel _value, $Res Function(_$_NoticePageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeList = freezed,
  }) {
    return _then(_$_NoticePageModel(
      noticeList: freezed == noticeList
          ? _value.noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as NoticeListDTO?,
    ));
  }
}

/// @nodoc

class _$_NoticePageModel implements _NoticePageModel {
  _$_NoticePageModel({this.noticeList});

  @override
  NoticeListDTO? noticeList;

  @override
  String toString() {
    return 'NoticePageModel(noticeList: $noticeList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticePageModelCopyWith<_$_NoticePageModel> get copyWith =>
      __$$_NoticePageModelCopyWithImpl<_$_NoticePageModel>(this, _$identity);
}

abstract class _NoticePageModel implements NoticePageModel {
  factory _NoticePageModel({NoticeListDTO? noticeList}) = _$_NoticePageModel;

  @override
  NoticeListDTO? get noticeList;
  set noticeList(NoticeListDTO? value);
  @override
  @JsonKey(ignore: true)
  _$$_NoticePageModelCopyWith<_$_NoticePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
