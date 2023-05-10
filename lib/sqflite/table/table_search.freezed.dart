// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableSearch _$TableSearchFromJson(Map<String, dynamic> json) {
  return _TableSearch.fromJson(json);
}

/// @nodoc
mixin _$TableSearch {
  String get searchText => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableSearchCopyWith<TableSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableSearchCopyWith<$Res> {
  factory $TableSearchCopyWith(
          TableSearch value, $Res Function(TableSearch) then) =
      _$TableSearchCopyWithImpl<$Res, TableSearch>;
  @useResult
  $Res call({String searchText, String createdAt});
}

/// @nodoc
class _$TableSearchCopyWithImpl<$Res, $Val extends TableSearch>
    implements $TableSearchCopyWith<$Res> {
  _$TableSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableSearchCopyWith<$Res>
    implements $TableSearchCopyWith<$Res> {
  factory _$$_TableSearchCopyWith(
          _$_TableSearch value, $Res Function(_$_TableSearch) then) =
      __$$_TableSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchText, String createdAt});
}

/// @nodoc
class __$$_TableSearchCopyWithImpl<$Res>
    extends _$TableSearchCopyWithImpl<$Res, _$_TableSearch>
    implements _$$_TableSearchCopyWith<$Res> {
  __$$_TableSearchCopyWithImpl(
      _$_TableSearch _value, $Res Function(_$_TableSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? createdAt = null,
  }) {
    return _then(_$_TableSearch(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
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
class _$_TableSearch with DiagnosticableTreeMixin implements _TableSearch {
  _$_TableSearch({required this.searchText, required this.createdAt});

  factory _$_TableSearch.fromJson(Map<String, dynamic> json) =>
      _$$_TableSearchFromJson(json);

  @override
  final String searchText;
  @override
  final String createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableSearch(searchText: $searchText, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TableSearch'))
      ..add(DiagnosticsProperty('searchText', searchText))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableSearch &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, searchText, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableSearchCopyWith<_$_TableSearch> get copyWith =>
      __$$_TableSearchCopyWithImpl<_$_TableSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableSearchToJson(
      this,
    );
  }
}

abstract class _TableSearch implements TableSearch {
  factory _TableSearch(
      {required final String searchText,
      required final String createdAt}) = _$_TableSearch;

  factory _TableSearch.fromJson(Map<String, dynamic> json) =
      _$_TableSearch.fromJson;

  @override
  String get searchText;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TableSearchCopyWith<_$_TableSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
