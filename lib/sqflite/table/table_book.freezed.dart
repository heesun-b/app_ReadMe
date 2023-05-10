// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableBook _$TableBookFromJson(Map<String, dynamic> json) {
  return _TableBook.fromJson(json);
}

/// @nodoc
mixin _$TableBook {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableBookCopyWith<TableBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableBookCopyWith<$Res> {
  factory $TableBookCopyWith(TableBook value, $Res Function(TableBook) then) =
      _$TableBookCopyWithImpl<$Res, TableBook>;
  @useResult
  $Res call({int id, String url, String createdAt});
}

/// @nodoc
class _$TableBookCopyWithImpl<$Res, $Val extends TableBook>
    implements $TableBookCopyWith<$Res> {
  _$TableBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableBookCopyWith<$Res> implements $TableBookCopyWith<$Res> {
  factory _$$_TableBookCopyWith(
          _$_TableBook value, $Res Function(_$_TableBook) then) =
      __$$_TableBookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, String createdAt});
}

/// @nodoc
class __$$_TableBookCopyWithImpl<$Res>
    extends _$TableBookCopyWithImpl<$Res, _$_TableBook>
    implements _$$_TableBookCopyWith<$Res> {
  __$$_TableBookCopyWithImpl(
      _$_TableBook _value, $Res Function(_$_TableBook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? createdAt = null,
  }) {
    return _then(_$_TableBook(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableBook with DiagnosticableTreeMixin implements _TableBook {
  _$_TableBook({required this.id, required this.url, required this.createdAt});

  factory _$_TableBook.fromJson(Map<String, dynamic> json) =>
      _$$_TableBookFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableBook(id: $id, url: $url, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TableBook'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableBook &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableBookCopyWith<_$_TableBook> get copyWith =>
      __$$_TableBookCopyWithImpl<_$_TableBook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableBookToJson(
      this,
    );
  }
}

abstract class _TableBook implements TableBook {
  factory _TableBook(
      {required final int id,
      required final String url,
      required final String createdAt}) = _$_TableBook;

  factory _TableBook.fromJson(Map<String, dynamic> json) =
      _$_TableBook.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TableBookCopyWith<_$_TableBook> get copyWith =>
      throw _privateConstructorUsedError;
}
