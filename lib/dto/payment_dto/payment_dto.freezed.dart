// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDTO _$PaymentDTOFromJson(Map<String, dynamic> json) {
  return _PaymentDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentDTO {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDTOCopyWith<PaymentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDTOCopyWith<$Res> {
  factory $PaymentDTOCopyWith(
          PaymentDTO value, $Res Function(PaymentDTO) then) =
      _$PaymentDTOCopyWithImpl<$Res, PaymentDTO>;
  @useResult
  $Res call({int id, String type});
}

/// @nodoc
class _$PaymentDTOCopyWithImpl<$Res, $Val extends PaymentDTO>
    implements $PaymentDTOCopyWith<$Res> {
  _$PaymentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDTOCopyWith<$Res>
    implements $PaymentDTOCopyWith<$Res> {
  factory _$$_PaymentDTOCopyWith(
          _$_PaymentDTO value, $Res Function(_$_PaymentDTO) then) =
      __$$_PaymentDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String type});
}

/// @nodoc
class __$$_PaymentDTOCopyWithImpl<$Res>
    extends _$PaymentDTOCopyWithImpl<$Res, _$_PaymentDTO>
    implements _$$_PaymentDTOCopyWith<$Res> {
  __$$_PaymentDTOCopyWithImpl(
      _$_PaymentDTO _value, $Res Function(_$_PaymentDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$_PaymentDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDTO with DiagnosticableTreeMixin implements _PaymentDTO {
  _$_PaymentDTO({required this.id, required this.type});

  factory _$_PaymentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDTOFromJson(json);

  @override
  final int id;
  @override
  final String type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentDTO(id: $id, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDTOCopyWith<_$_PaymentDTO> get copyWith =>
      __$$_PaymentDTOCopyWithImpl<_$_PaymentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDTOToJson(
      this,
    );
  }
}

abstract class _PaymentDTO implements PaymentDTO {
  factory _PaymentDTO({required final int id, required final String type}) =
      _$_PaymentDTO;

  factory _PaymentDTO.fromJson(Map<String, dynamic> json) =
      _$_PaymentDTO.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDTOCopyWith<_$_PaymentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
