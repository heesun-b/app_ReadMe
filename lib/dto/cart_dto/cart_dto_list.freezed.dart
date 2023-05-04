// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_dto_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartDTOList _$CartDTOListFromJson(Map<String, dynamic> json) {
  return _CartDTOList.fromJson(json);
}

/// @nodoc
mixin _$CartDTOList {
  List<CartDTO> get cartList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDTOListCopyWith<CartDTOList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDTOListCopyWith<$Res> {
  factory $CartDTOListCopyWith(
          CartDTOList value, $Res Function(CartDTOList) then) =
      _$CartDTOListCopyWithImpl<$Res, CartDTOList>;
  @useResult
  $Res call({List<CartDTO> cartList});
}

/// @nodoc
class _$CartDTOListCopyWithImpl<$Res, $Val extends CartDTOList>
    implements $CartDTOListCopyWith<$Res> {
  _$CartDTOListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartList = null,
  }) {
    return _then(_value.copyWith(
      cartList: null == cartList
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<CartDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartDTOListCopyWith<$Res>
    implements $CartDTOListCopyWith<$Res> {
  factory _$$_CartDTOListCopyWith(
          _$_CartDTOList value, $Res Function(_$_CartDTOList) then) =
      __$$_CartDTOListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartDTO> cartList});
}

/// @nodoc
class __$$_CartDTOListCopyWithImpl<$Res>
    extends _$CartDTOListCopyWithImpl<$Res, _$_CartDTOList>
    implements _$$_CartDTOListCopyWith<$Res> {
  __$$_CartDTOListCopyWithImpl(
      _$_CartDTOList _value, $Res Function(_$_CartDTOList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartList = null,
  }) {
    return _then(_$_CartDTOList(
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<CartDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartDTOList with DiagnosticableTreeMixin implements _CartDTOList {
  _$_CartDTOList({required final List<CartDTO> cartList})
      : _cartList = cartList;

  factory _$_CartDTOList.fromJson(Map<String, dynamic> json) =>
      _$$_CartDTOListFromJson(json);

  final List<CartDTO> _cartList;
  @override
  List<CartDTO> get cartList {
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartDTOList(cartList: $cartList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartDTOList'))
      ..add(DiagnosticsProperty('cartList', cartList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartDTOList &&
            const DeepCollectionEquality().equals(other._cartList, _cartList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartDTOListCopyWith<_$_CartDTOList> get copyWith =>
      __$$_CartDTOListCopyWithImpl<_$_CartDTOList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartDTOListToJson(
      this,
    );
  }
}

abstract class _CartDTOList implements CartDTOList {
  factory _CartDTOList({required final List<CartDTO> cartList}) =
      _$_CartDTOList;

  factory _CartDTOList.fromJson(Map<String, dynamic> json) =
      _$_CartDTOList.fromJson;

  @override
  List<CartDTO> get cartList;
  @override
  @JsonKey(ignore: true)
  _$$_CartDTOListCopyWith<_$_CartDTOList> get copyWith =>
      throw _privateConstructorUsedError;
}
