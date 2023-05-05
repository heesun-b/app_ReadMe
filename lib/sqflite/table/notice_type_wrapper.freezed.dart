// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_type_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeTypeWrapper _$NoticeTypeWrapperFromJson(Map<String, dynamic> json) {
  return _NoticeTypeWrapper.fromJson(json);
}

/// @nodoc
mixin _$NoticeTypeWrapper {
  String get noticeType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeTypeWrapperCopyWith<NoticeTypeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeTypeWrapperCopyWith<$Res> {
  factory $NoticeTypeWrapperCopyWith(
          NoticeTypeWrapper value, $Res Function(NoticeTypeWrapper) then) =
      _$NoticeTypeWrapperCopyWithImpl<$Res, NoticeTypeWrapper>;
  @useResult
  $Res call({String noticeType});
}

/// @nodoc
class _$NoticeTypeWrapperCopyWithImpl<$Res, $Val extends NoticeTypeWrapper>
    implements $NoticeTypeWrapperCopyWith<$Res> {
  _$NoticeTypeWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeType = null,
  }) {
    return _then(_value.copyWith(
      noticeType: null == noticeType
          ? _value.noticeType
          : noticeType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoticeTypeWrapperCopyWith<$Res>
    implements $NoticeTypeWrapperCopyWith<$Res> {
  factory _$$_NoticeTypeWrapperCopyWith(_$_NoticeTypeWrapper value,
          $Res Function(_$_NoticeTypeWrapper) then) =
      __$$_NoticeTypeWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String noticeType});
}

/// @nodoc
class __$$_NoticeTypeWrapperCopyWithImpl<$Res>
    extends _$NoticeTypeWrapperCopyWithImpl<$Res, _$_NoticeTypeWrapper>
    implements _$$_NoticeTypeWrapperCopyWith<$Res> {
  __$$_NoticeTypeWrapperCopyWithImpl(
      _$_NoticeTypeWrapper _value, $Res Function(_$_NoticeTypeWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeType = null,
  }) {
    return _then(_$_NoticeTypeWrapper(
      noticeType: null == noticeType
          ? _value.noticeType
          : noticeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeTypeWrapper
    with DiagnosticableTreeMixin
    implements _NoticeTypeWrapper {
  _$_NoticeTypeWrapper({required this.noticeType});

  factory _$_NoticeTypeWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeTypeWrapperFromJson(json);

  @override
  final String noticeType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoticeTypeWrapper(noticeType: $noticeType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoticeTypeWrapper'))
      ..add(DiagnosticsProperty('noticeType', noticeType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeTypeWrapper &&
            (identical(other.noticeType, noticeType) ||
                other.noticeType == noticeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, noticeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeTypeWrapperCopyWith<_$_NoticeTypeWrapper> get copyWith =>
      __$$_NoticeTypeWrapperCopyWithImpl<_$_NoticeTypeWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeTypeWrapperToJson(
      this,
    );
  }
}

abstract class _NoticeTypeWrapper implements NoticeTypeWrapper {
  factory _NoticeTypeWrapper({required final String noticeType}) =
      _$_NoticeTypeWrapper;

  factory _NoticeTypeWrapper.fromJson(Map<String, dynamic> json) =
      _$_NoticeTypeWrapper.fromJson;

  @override
  String get noticeType;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeTypeWrapperCopyWith<_$_NoticeTypeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
