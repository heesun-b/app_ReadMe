// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_viewer_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookViewerPageModel {
  Book get book => throw _privateConstructorUsedError;
  set book(Book value) => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  set user(User value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookViewerPageModelCopyWith<BookViewerPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookViewerPageModelCopyWith<$Res> {
  factory $BookViewerPageModelCopyWith(
          BookViewerPageModel value, $Res Function(BookViewerPageModel) then) =
      _$BookViewerPageModelCopyWithImpl<$Res, BookViewerPageModel>;
  @useResult
  $Res call({Book book, User user});

  $BookCopyWith<$Res> get book;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$BookViewerPageModelCopyWithImpl<$Res, $Val extends BookViewerPageModel>
    implements $BookViewerPageModelCopyWith<$Res> {
  _$BookViewerPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookViewerPageModelCopyWith<$Res>
    implements $BookViewerPageModelCopyWith<$Res> {
  factory _$$_BookViewerPageModelCopyWith(_$_BookViewerPageModel value,
          $Res Function(_$_BookViewerPageModel) then) =
      __$$_BookViewerPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book, User user});

  @override
  $BookCopyWith<$Res> get book;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_BookViewerPageModelCopyWithImpl<$Res>
    extends _$BookViewerPageModelCopyWithImpl<$Res, _$_BookViewerPageModel>
    implements _$$_BookViewerPageModelCopyWith<$Res> {
  __$$_BookViewerPageModelCopyWithImpl(_$_BookViewerPageModel _value,
      $Res Function(_$_BookViewerPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? user = null,
  }) {
    return _then(_$_BookViewerPageModel(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_BookViewerPageModel implements _BookViewerPageModel {
  _$_BookViewerPageModel({required this.book, required this.user});

  @override
  Book book;
  @override
  User user;

  @override
  String toString() {
    return 'BookViewerPageModel(book: $book, user: $user)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookViewerPageModelCopyWith<_$_BookViewerPageModel> get copyWith =>
      __$$_BookViewerPageModelCopyWithImpl<_$_BookViewerPageModel>(
          this, _$identity);
}

abstract class _BookViewerPageModel implements BookViewerPageModel {
  factory _BookViewerPageModel({required Book book, required User user}) =
      _$_BookViewerPageModel;

  @override
  Book get book;
  set book(Book value);
  @override
  User get user;
  set user(User value);
  @override
  @JsonKey(ignore: true)
  _$$_BookViewerPageModelCopyWith<_$_BookViewerPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
