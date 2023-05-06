// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_box_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorageBoxTab _$StorageBoxTabFromJson(Map<String, dynamic> json) {
  return _StorageBoxTab.fromJson(json);
}

/// @nodoc
mixin _$StorageBoxTab {
  String get requestName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageBoxTabCopyWith<StorageBoxTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageBoxTabCopyWith<$Res> {
  factory $StorageBoxTabCopyWith(
          StorageBoxTab value, $Res Function(StorageBoxTab) then) =
      _$StorageBoxTabCopyWithImpl<$Res, StorageBoxTab>;
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class _$StorageBoxTabCopyWithImpl<$Res, $Val extends StorageBoxTab>
    implements $StorageBoxTabCopyWith<$Res> {
  _$StorageBoxTabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestName = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      requestName: null == requestName
          ? _value.requestName
          : requestName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StorageBoxTabCopyWith<$Res>
    implements $StorageBoxTabCopyWith<$Res> {
  factory _$$_StorageBoxTabCopyWith(
          _$_StorageBoxTab value, $Res Function(_$_StorageBoxTab) then) =
      __$$_StorageBoxTabCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class __$$_StorageBoxTabCopyWithImpl<$Res>
    extends _$StorageBoxTabCopyWithImpl<$Res, _$_StorageBoxTab>
    implements _$$_StorageBoxTabCopyWith<$Res> {
  __$$_StorageBoxTabCopyWithImpl(
      _$_StorageBoxTab _value, $Res Function(_$_StorageBoxTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestName = null,
    Object? name = null,
  }) {
    return _then(_$_StorageBoxTab(
      requestName: null == requestName
          ? _value.requestName
          : requestName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StorageBoxTab with DiagnosticableTreeMixin implements _StorageBoxTab {
  _$_StorageBoxTab({required this.requestName, required this.name});

  factory _$_StorageBoxTab.fromJson(Map<String, dynamic> json) =>
      _$$_StorageBoxTabFromJson(json);

  @override
  final String requestName;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StorageBoxTab(requestName: $requestName, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StorageBoxTab'))
      ..add(DiagnosticsProperty('requestName', requestName))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageBoxTab &&
            (identical(other.requestName, requestName) ||
                other.requestName == requestName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageBoxTabCopyWith<_$_StorageBoxTab> get copyWith =>
      __$$_StorageBoxTabCopyWithImpl<_$_StorageBoxTab>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorageBoxTabToJson(
      this,
    );
  }
}

abstract class _StorageBoxTab implements StorageBoxTab {
  factory _StorageBoxTab(
      {required final String requestName,
      required final String name}) = _$_StorageBoxTab;

  factory _StorageBoxTab.fromJson(Map<String, dynamic> json) =
      _$_StorageBoxTab.fromJson;

  @override
  String get requestName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StorageBoxTabCopyWith<_$_StorageBoxTab> get copyWith =>
      throw _privateConstructorUsedError;
}
