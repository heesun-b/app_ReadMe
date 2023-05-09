// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_detail_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoticeDetailPageModel {
  NoticeDTO get notice => throw _privateConstructorUsedError;
  set notice(NoticeDTO value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationDetailPageModelCopyWith<NoticeDetailPageModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDetailPageModelCopyWith<$Res> {
  factory $NotificationDetailPageModelCopyWith(
          NoticeDetailPageModel value,
          $Res Function(NoticeDetailPageModel) then) =
      _$NotificationDetailPageModelCopyWithImpl<$Res,
          NoticeDetailPageModel>;
  @useResult
  $Res call({NoticeDTO notice});

  $NoticeDTOCopyWith<$Res> get notice;
}

/// @nodoc
class _$NotificationDetailPageModelCopyWithImpl<$Res,
        $Val extends NoticeDetailPageModel>
    implements $NotificationDetailPageModelCopyWith<$Res> {
  _$NotificationDetailPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notice = null,
  }) {
    return _then(_value.copyWith(
      notice: null == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as NoticeDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoticeDTOCopyWith<$Res> get notice {
    return $NoticeDTOCopyWith<$Res>(_value.notice, (value) {
      return _then(_value.copyWith(notice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationDetailPageModelCopyWith<$Res>
    implements $NotificationDetailPageModelCopyWith<$Res> {
  factory _$$_NotificationDetailPageModelCopyWith(
          _$_NotificationDetailPageModel value,
          $Res Function(_$_NotificationDetailPageModel) then) =
      __$$_NotificationDetailPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoticeDTO notice});

  @override
  $NoticeDTOCopyWith<$Res> get notice;
}

/// @nodoc
class __$$_NotificationDetailPageModelCopyWithImpl<$Res>
    extends _$NotificationDetailPageModelCopyWithImpl<$Res,
        _$_NotificationDetailPageModel>
    implements _$$_NotificationDetailPageModelCopyWith<$Res> {
  __$$_NotificationDetailPageModelCopyWithImpl(
      _$_NotificationDetailPageModel _value,
      $Res Function(_$_NotificationDetailPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notice = null,
  }) {
    return _then(_$_NotificationDetailPageModel(
      notice: null == notice
          ? _value.notice
          : notice // ignore: cast_nullable_to_non_nullable
              as NoticeDTO,
    ));
  }
}

/// @nodoc

class _$_NotificationDetailPageModel implements _NoticeDetailPageModel {
  _$_NotificationDetailPageModel({required this.notice});

  @override
  NoticeDTO notice;

  @override
  String toString() {
    return 'NotificationDetailPageModel(notice: $notice)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationDetailPageModelCopyWith<_$_NotificationDetailPageModel>
      get copyWith => __$$_NotificationDetailPageModelCopyWithImpl<
          _$_NotificationDetailPageModel>(this, _$identity);
}

abstract class _NoticeDetailPageModel
    implements NoticeDetailPageModel {
  factory _NoticeDetailPageModel({required NoticeDTO notice}) =
      _$_NotificationDetailPageModel;

  @override
  NoticeDTO get notice;
  set notice(NoticeDTO value);
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDetailPageModelCopyWith<_$_NotificationDetailPageModel>
      get copyWith => throw _privateConstructorUsedError;
}
