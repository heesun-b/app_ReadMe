// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDTO _$ReviewDTOFromJson(Map<String, dynamic> json) {
  return _ReviewDTO.fromJson(json);
}

/// @nodoc
mixin _$ReviewDTO {
  List<Review> get content => throw _privateConstructorUsedError;
  Pageable get pageable => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDTOCopyWith<ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDTOCopyWith<$Res> {
  factory $ReviewDTOCopyWith(ReviewDTO value, $Res Function(ReviewDTO) then) =
      _$ReviewDTOCopyWithImpl<$Res, ReviewDTO>;
  @useResult
  $Res call(
      {List<Review> content, Pageable pageable, bool last, int totalPages});

  $PageableCopyWith<$Res> get pageable;
}

/// @nodoc
class _$ReviewDTOCopyWithImpl<$Res, $Val extends ReviewDTO>
    implements $ReviewDTOCopyWith<$Res> {
  _$ReviewDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? last = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewDTOCopyWith<$Res> implements $ReviewDTOCopyWith<$Res> {
  factory _$$_ReviewDTOCopyWith(
          _$_ReviewDTO value, $Res Function(_$_ReviewDTO) then) =
      __$$_ReviewDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Review> content, Pageable pageable, bool last, int totalPages});

  @override
  $PageableCopyWith<$Res> get pageable;
}

/// @nodoc
class __$$_ReviewDTOCopyWithImpl<$Res>
    extends _$ReviewDTOCopyWithImpl<$Res, _$_ReviewDTO>
    implements _$$_ReviewDTOCopyWith<$Res> {
  __$$_ReviewDTOCopyWithImpl(
      _$_ReviewDTO _value, $Res Function(_$_ReviewDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? last = null,
    Object? totalPages = null,
  }) {
    return _then(_$_ReviewDTO(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Review>,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewDTO implements _ReviewDTO {
  _$_ReviewDTO(
      {required final List<Review> content,
      required this.pageable,
      required this.last,
      required this.totalPages})
      : _content = content;

  factory _$_ReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDTOFromJson(json);

  final List<Review> _content;
  @override
  List<Review> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final Pageable pageable;
  @override
  final bool last;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'ReviewDTO(content: $content, pageable: $pageable, last: $last, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewDTO &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      pageable,
      last,
      totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewDTOCopyWith<_$_ReviewDTO> get copyWith =>
      __$$_ReviewDTOCopyWithImpl<_$_ReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDTOToJson(
      this,
    );
  }
}

abstract class _ReviewDTO implements ReviewDTO {
  factory _ReviewDTO(
      {required final List<Review> content,
      required final Pageable pageable,
      required final bool last,
      required final int totalPages}) = _$_ReviewDTO;

  factory _ReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_ReviewDTO.fromJson;

  @override
  List<Review> get content;
  @override
  Pageable get pageable;
  @override
  bool get last;
  @override
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewDTOCopyWith<_$_ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
