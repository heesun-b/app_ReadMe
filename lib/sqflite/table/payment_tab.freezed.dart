// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTab _$PaymentTabFromJson(Map<String, dynamic> json) {
  return _PaymentTab.fromJson(json);
}

/// @nodoc
mixin _$PaymentTab {
  String get requestName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTabCopyWith<PaymentTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTabCopyWith<$Res> {
  factory $PaymentTabCopyWith(
          PaymentTab value, $Res Function(PaymentTab) then) =
      _$PaymentTabCopyWithImpl<$Res, PaymentTab>;
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class _$PaymentTabCopyWithImpl<$Res, $Val extends PaymentTab>
    implements $PaymentTabCopyWith<$Res> {
  _$PaymentTabCopyWithImpl(this._value, this._then);

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
abstract class _$$_PaymentTabCopyWith<$Res>
    implements $PaymentTabCopyWith<$Res> {
  factory _$$_PaymentTabCopyWith(
          _$_PaymentTab value, $Res Function(_$_PaymentTab) then) =
      __$$_PaymentTabCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class __$$_PaymentTabCopyWithImpl<$Res>
    extends _$PaymentTabCopyWithImpl<$Res, _$_PaymentTab>
    implements _$$_PaymentTabCopyWith<$Res> {
  __$$_PaymentTabCopyWithImpl(
      _$_PaymentTab _value, $Res Function(_$_PaymentTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestName = null,
    Object? name = null,
  }) {
    return _then(_$_PaymentTab(
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
class _$_PaymentTab with DiagnosticableTreeMixin implements _PaymentTab {
  _$_PaymentTab({required this.requestName, required this.name});

  factory _$_PaymentTab.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTabFromJson(json);

  @override
  final String requestName;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentTab(requestName: $requestName, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentTab'))
      ..add(DiagnosticsProperty('requestName', requestName))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTab &&
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
  _$$_PaymentTabCopyWith<_$_PaymentTab> get copyWith =>
      __$$_PaymentTabCopyWithImpl<_$_PaymentTab>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTabToJson(
      this,
    );
  }
}

abstract class _PaymentTab implements PaymentTab {
  factory _PaymentTab(
      {required final String requestName,
      required final String name}) = _$_PaymentTab;

  factory _PaymentTab.fromJson(Map<String, dynamic> json) =
      _$_PaymentTab.fromJson;

  @override
  String get requestName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTabCopyWith<_$_PaymentTab> get copyWith =>
      throw _privateConstructorUsedError;
}
