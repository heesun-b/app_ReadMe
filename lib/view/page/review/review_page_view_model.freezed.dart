// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewPageModel {
  List<MyReview> get reviewList => throw _privateConstructorUsedError;
  set reviewList(List<MyReview> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewPageModelCopyWith<ReviewPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewPageModelCopyWith<$Res> {
  factory $ReviewPageModelCopyWith(
          ReviewPageModel value, $Res Function(ReviewPageModel) then) =
      _$ReviewPageModelCopyWithImpl<$Res, ReviewPageModel>;
  @useResult
  $Res call({List<MyReview> reviewList});
}

/// @nodoc
class _$ReviewPageModelCopyWithImpl<$Res, $Val extends ReviewPageModel>
    implements $ReviewPageModelCopyWith<$Res> {
  _$ReviewPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewList = null,
  }) {
    return _then(_value.copyWith(
      reviewList: null == reviewList
          ? _value.reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<MyReview>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewPageModelCopyWith<$Res>
    implements $ReviewPageModelCopyWith<$Res> {
  factory _$$_ReviewPageModelCopyWith(
          _$_ReviewPageModel value, $Res Function(_$_ReviewPageModel) then) =
      __$$_ReviewPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MyReview> reviewList});
}

/// @nodoc
class __$$_ReviewPageModelCopyWithImpl<$Res>
    extends _$ReviewPageModelCopyWithImpl<$Res, _$_ReviewPageModel>
    implements _$$_ReviewPageModelCopyWith<$Res> {
  __$$_ReviewPageModelCopyWithImpl(
      _$_ReviewPageModel _value, $Res Function(_$_ReviewPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewList = null,
  }) {
    return _then(_$_ReviewPageModel(
      reviewList: null == reviewList
          ? _value.reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<MyReview>,
    ));
  }
}

/// @nodoc

class _$_ReviewPageModel implements _ReviewPageModel {
  _$_ReviewPageModel({required this.reviewList});

  @override
  List<MyReview> reviewList;

  @override
  String toString() {
    return 'ReviewPageModel(reviewList: $reviewList)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewPageModelCopyWith<_$_ReviewPageModel> get copyWith =>
      __$$_ReviewPageModelCopyWithImpl<_$_ReviewPageModel>(this, _$identity);
}

abstract class _ReviewPageModel implements ReviewPageModel {
  factory _ReviewPageModel({required List<MyReview> reviewList}) =
      _$_ReviewPageModel;

  @override
  List<MyReview> get reviewList;
  set reviewList(List<MyReview> value);
  @override
  @JsonKey(ignore: true)
  _$$_ReviewPageModelCopyWith<_$_ReviewPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
