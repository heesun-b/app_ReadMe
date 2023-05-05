// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryPageModel {
  List<Book> get books => throw _privateConstructorUsedError;
  set books(List<Book> value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;
  set isLast(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryPageModelCopyWith<CategoryPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPageModelCopyWith<$Res> {
  factory $CategoryPageModelCopyWith(
          CategoryPageModel value, $Res Function(CategoryPageModel) then) =
      _$CategoryPageModelCopyWithImpl<$Res, CategoryPageModel>;
  @useResult
  $Res call({List<Book> books, int page, bool isLast});
}

/// @nodoc
class _$CategoryPageModelCopyWithImpl<$Res, $Val extends CategoryPageModel>
    implements $CategoryPageModelCopyWith<$Res> {
  _$CategoryPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? page = null,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryPageModelCopyWith<$Res>
    implements $CategoryPageModelCopyWith<$Res> {
  factory _$$_CategoryPageModelCopyWith(_$_CategoryPageModel value,
          $Res Function(_$_CategoryPageModel) then) =
      __$$_CategoryPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Book> books, int page, bool isLast});
}

/// @nodoc
class __$$_CategoryPageModelCopyWithImpl<$Res>
    extends _$CategoryPageModelCopyWithImpl<$Res, _$_CategoryPageModel>
    implements _$$_CategoryPageModelCopyWith<$Res> {
  __$$_CategoryPageModelCopyWithImpl(
      _$_CategoryPageModel _value, $Res Function(_$_CategoryPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? page = null,
    Object? isLast = null,
  }) {
    return _then(_$_CategoryPageModel(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CategoryPageModel
    with DiagnosticableTreeMixin
    implements _CategoryPageModel {
  _$_CategoryPageModel(
      {required this.books, required this.page, required this.isLast});

  @override
  List<Book> books;
  @override
  int page;
  @override
  bool isLast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryPageModel(books: $books, page: $page, isLast: $isLast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryPageModel'))
      ..add(DiagnosticsProperty('books', books))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('isLast', isLast));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryPageModelCopyWith<_$_CategoryPageModel> get copyWith =>
      __$$_CategoryPageModelCopyWithImpl<_$_CategoryPageModel>(
          this, _$identity);
}

abstract class _CategoryPageModel implements CategoryPageModel {
  factory _CategoryPageModel(
      {required List<Book> books,
      required int page,
      required bool isLast}) = _$_CategoryPageModel;

  @override
  List<Book> get books;
  set books(List<Book> value);
  @override
  int get page;
  set page(int value);
  @override
  bool get isLast;
  set isLast(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_CategoryPageModelCopyWith<_$_CategoryPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
