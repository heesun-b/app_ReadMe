// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_detail_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookDetailPageModel {
  BookDetailDTO get book => throw _privateConstructorUsedError;
  set book(BookDetailDTO value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookDetailPageModelCopyWith<BookDetailPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailPageModelCopyWith<$Res> {
  factory $BookDetailPageModelCopyWith(
          BookDetailPageModel value, $Res Function(BookDetailPageModel) then) =
      _$BookDetailPageModelCopyWithImpl<$Res, BookDetailPageModel>;
  @useResult
  $Res call({BookDetailDTO book});

  $BookDetailDTOCopyWith<$Res> get book;
}

/// @nodoc
class _$BookDetailPageModelCopyWithImpl<$Res, $Val extends BookDetailPageModel>
    implements $BookDetailPageModelCopyWith<$Res> {
  _$BookDetailPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_value.copyWith(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookDetailDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookDetailDTOCopyWith<$Res> get book {
    return $BookDetailDTOCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookDetailPageModelCopyWith<$Res>
    implements $BookDetailPageModelCopyWith<$Res> {
  factory _$$_BookDetailPageModelCopyWith(_$_BookDetailPageModel value,
          $Res Function(_$_BookDetailPageModel) then) =
      __$$_BookDetailPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookDetailDTO book});

  @override
  $BookDetailDTOCopyWith<$Res> get book;
}

/// @nodoc
class __$$_BookDetailPageModelCopyWithImpl<$Res>
    extends _$BookDetailPageModelCopyWithImpl<$Res, _$_BookDetailPageModel>
    implements _$$_BookDetailPageModelCopyWith<$Res> {
  __$$_BookDetailPageModelCopyWithImpl(_$_BookDetailPageModel _value,
      $Res Function(_$_BookDetailPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$_BookDetailPageModel(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookDetailDTO,
    ));
  }
}

/// @nodoc

class _$_BookDetailPageModel implements _BookDetailPageModel {
  _$_BookDetailPageModel({required this.book});

  @override
  BookDetailDTO book;

  @override
  String toString() {
    return 'BookDetailPageModel(book: $book)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookDetailPageModelCopyWith<_$_BookDetailPageModel> get copyWith =>
      __$$_BookDetailPageModelCopyWithImpl<_$_BookDetailPageModel>(
          this, _$identity);
}

abstract class _BookDetailPageModel implements BookDetailPageModel {
  factory _BookDetailPageModel({required BookDetailDTO book}) =
      _$_BookDetailPageModel;

  @override
  BookDetailDTO get book;
  set book(BookDetailDTO value);
  @override
  @JsonKey(ignore: true)
  _$$_BookDetailPageModelCopyWith<_$_BookDetailPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
