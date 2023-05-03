// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  Publisher get publisher => throw _privateConstructorUsedError;
  set publisher(Publisher value) => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  set author(String value) => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  set price(int value) => throw _privateConstructorUsedError;
  String get introduction => throw _privateConstructorUsedError;
  set introduction(String value) => throw _privateConstructorUsedError;
  BigCategory get bigCategory => throw _privateConstructorUsedError;
  set bigCategory(BigCategory value) => throw _privateConstructorUsedError;
  SmallCategory get smallCategory => throw _privateConstructorUsedError;
  set smallCategory(SmallCategory value) => throw _privateConstructorUsedError;
  String get authorInfo => throw _privateConstructorUsedError;
  set authorInfo(String value) => throw _privateConstructorUsedError;
  bool get isHeart => throw _privateConstructorUsedError;
  set isHeart(bool value) => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  set stars(double value) => throw _privateConstructorUsedError;
  FileDTO get epubFile => throw _privateConstructorUsedError;
  set epubFile(FileDTO value) => throw _privateConstructorUsedError;
  FileDTO get coverFile => throw _privateConstructorUsedError;
  set coverFile(FileDTO value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {int id,
      Publisher publisher,
      String title,
      String author,
      int price,
      String introduction,
      BigCategory bigCategory,
      SmallCategory smallCategory,
      String authorInfo,
      bool isHeart,
      double stars,
      FileDTO epubFile,
      FileDTO coverFile});

  $PublisherCopyWith<$Res> get publisher;
  $BigCategoryCopyWith<$Res> get bigCategory;
  $SmallCategoryCopyWith<$Res> get smallCategory;
  $FileDTOCopyWith<$Res> get epubFile;
  $FileDTOCopyWith<$Res> get coverFile;
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? publisher = null,
    Object? title = null,
    Object? author = null,
    Object? price = null,
    Object? introduction = null,
    Object? bigCategory = null,
    Object? smallCategory = null,
    Object? authorInfo = null,
    Object? isHeart = null,
    Object? stars = null,
    Object? epubFile = null,
    Object? coverFile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Publisher,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      bigCategory: null == bigCategory
          ? _value.bigCategory
          : bigCategory // ignore: cast_nullable_to_non_nullable
              as BigCategory,
      smallCategory: null == smallCategory
          ? _value.smallCategory
          : smallCategory // ignore: cast_nullable_to_non_nullable
              as SmallCategory,
      authorInfo: null == authorInfo
          ? _value.authorInfo
          : authorInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isHeart: null == isHeart
          ? _value.isHeart
          : isHeart // ignore: cast_nullable_to_non_nullable
              as bool,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      epubFile: null == epubFile
          ? _value.epubFile
          : epubFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
      coverFile: null == coverFile
          ? _value.coverFile
          : coverFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublisherCopyWith<$Res> get publisher {
    return $PublisherCopyWith<$Res>(_value.publisher, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BigCategoryCopyWith<$Res> get bigCategory {
    return $BigCategoryCopyWith<$Res>(_value.bigCategory, (value) {
      return _then(_value.copyWith(bigCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SmallCategoryCopyWith<$Res> get smallCategory {
    return $SmallCategoryCopyWith<$Res>(_value.smallCategory, (value) {
      return _then(_value.copyWith(smallCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FileDTOCopyWith<$Res> get epubFile {
    return $FileDTOCopyWith<$Res>(_value.epubFile, (value) {
      return _then(_value.copyWith(epubFile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FileDTOCopyWith<$Res> get coverFile {
    return $FileDTOCopyWith<$Res>(_value.coverFile, (value) {
      return _then(_value.copyWith(coverFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$_BookCopyWith(_$_Book value, $Res Function(_$_Book) then) =
      __$$_BookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Publisher publisher,
      String title,
      String author,
      int price,
      String introduction,
      BigCategory bigCategory,
      SmallCategory smallCategory,
      String authorInfo,
      bool isHeart,
      double stars,
      FileDTO epubFile,
      FileDTO coverFile});

  @override
  $PublisherCopyWith<$Res> get publisher;
  @override
  $BigCategoryCopyWith<$Res> get bigCategory;
  @override
  $SmallCategoryCopyWith<$Res> get smallCategory;
  @override
  $FileDTOCopyWith<$Res> get epubFile;
  @override
  $FileDTOCopyWith<$Res> get coverFile;
}

/// @nodoc
class __$$_BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res, _$_Book>
    implements _$$_BookCopyWith<$Res> {
  __$$_BookCopyWithImpl(_$_Book _value, $Res Function(_$_Book) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? publisher = null,
    Object? title = null,
    Object? author = null,
    Object? price = null,
    Object? introduction = null,
    Object? bigCategory = null,
    Object? smallCategory = null,
    Object? authorInfo = null,
    Object? isHeart = null,
    Object? stars = null,
    Object? epubFile = null,
    Object? coverFile = null,
  }) {
    return _then(_$_Book(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Publisher,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      bigCategory: null == bigCategory
          ? _value.bigCategory
          : bigCategory // ignore: cast_nullable_to_non_nullable
              as BigCategory,
      smallCategory: null == smallCategory
          ? _value.smallCategory
          : smallCategory // ignore: cast_nullable_to_non_nullable
              as SmallCategory,
      authorInfo: null == authorInfo
          ? _value.authorInfo
          : authorInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isHeart: null == isHeart
          ? _value.isHeart
          : isHeart // ignore: cast_nullable_to_non_nullable
              as bool,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      epubFile: null == epubFile
          ? _value.epubFile
          : epubFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
      coverFile: null == coverFile
          ? _value.coverFile
          : coverFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book with DiagnosticableTreeMixin implements _Book {
  _$_Book(
      {required this.id,
      required this.publisher,
      required this.title,
      required this.author,
      required this.price,
      required this.introduction,
      required this.bigCategory,
      required this.smallCategory,
      required this.authorInfo,
      required this.isHeart,
      required this.stars,
      required this.epubFile,
      required this.coverFile});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  int id;
  @override
  Publisher publisher;
  @override
  String title;
  @override
  String author;
  @override
  int price;
  @override
  String introduction;
  @override
  BigCategory bigCategory;
  @override
  SmallCategory smallCategory;
  @override
  String authorInfo;
  @override
  bool isHeart;
  @override
  double stars;
  @override
  FileDTO epubFile;
  @override
  FileDTO coverFile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Book(id: $id, publisher: $publisher, title: $title, author: $author, price: $price, introduction: $introduction, bigCategory: $bigCategory, smallCategory: $smallCategory, authorInfo: $authorInfo, isHeart: $isHeart, stars: $stars, epubFile: $epubFile, coverFile: $coverFile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Book'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('publisher', publisher))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('introduction', introduction))
      ..add(DiagnosticsProperty('bigCategory', bigCategory))
      ..add(DiagnosticsProperty('smallCategory', smallCategory))
      ..add(DiagnosticsProperty('authorInfo', authorInfo))
      ..add(DiagnosticsProperty('isHeart', isHeart))
      ..add(DiagnosticsProperty('stars', stars))
      ..add(DiagnosticsProperty('epubFile', epubFile))
      ..add(DiagnosticsProperty('coverFile', coverFile));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookCopyWith<_$_Book> get copyWith =>
      __$$_BookCopyWithImpl<_$_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  factory _Book(
      {required int id,
      required Publisher publisher,
      required String title,
      required String author,
      required int price,
      required String introduction,
      required BigCategory bigCategory,
      required SmallCategory smallCategory,
      required String authorInfo,
      required bool isHeart,
      required double stars,
      required FileDTO epubFile,
      required FileDTO coverFile}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  Publisher get publisher;
  set publisher(Publisher value);
  @override
  String get title;
  set title(String value);
  @override
  String get author;
  set author(String value);
  @override
  int get price;
  set price(int value);
  @override
  String get introduction;
  set introduction(String value);
  @override
  BigCategory get bigCategory;
  set bigCategory(BigCategory value);
  @override
  SmallCategory get smallCategory;
  set smallCategory(SmallCategory value);
  @override
  String get authorInfo;
  set authorInfo(String value);
  @override
  bool get isHeart;
  set isHeart(bool value);
  @override
  double get stars;
  set stars(double value);
  @override
  FileDTO get epubFile;
  set epubFile(FileDTO value);
  @override
  FileDTO get coverFile;
  set coverFile(FileDTO value);
  @override
  @JsonKey(ignore: true)
  _$$_BookCopyWith<_$_Book> get copyWith => throw _privateConstructorUsedError;
}
