// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionPageModel {
  bool get showDialog => throw _privateConstructorUsedError;
  set showDialog(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionPageModelCopyWith<QuestionPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionPageModelCopyWith<$Res> {
  factory $QuestionPageModelCopyWith(
          QuestionPageModel value, $Res Function(QuestionPageModel) then) =
      _$QuestionPageModelCopyWithImpl<$Res, QuestionPageModel>;
  @useResult
  $Res call({bool showDialog});
}

/// @nodoc
class _$QuestionPageModelCopyWithImpl<$Res, $Val extends QuestionPageModel>
    implements $QuestionPageModelCopyWith<$Res> {
  _$QuestionPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDialog = null,
  }) {
    return _then(_value.copyWith(
      showDialog: null == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionPageModelCopyWith<$Res>
    implements $QuestionPageModelCopyWith<$Res> {
  factory _$$_QuestionPageModelCopyWith(_$_QuestionPageModel value,
          $Res Function(_$_QuestionPageModel) then) =
      __$$_QuestionPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showDialog});
}

/// @nodoc
class __$$_QuestionPageModelCopyWithImpl<$Res>
    extends _$QuestionPageModelCopyWithImpl<$Res, _$_QuestionPageModel>
    implements _$$_QuestionPageModelCopyWith<$Res> {
  __$$_QuestionPageModelCopyWithImpl(
      _$_QuestionPageModel _value, $Res Function(_$_QuestionPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDialog = null,
  }) {
    return _then(_$_QuestionPageModel(
      showDialog: null == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QuestionPageModel implements _QuestionPageModel {
  _$_QuestionPageModel({required this.showDialog});

  @override
  bool showDialog;

  @override
  String toString() {
    return 'QuestionPageModel(showDialog: $showDialog)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionPageModelCopyWith<_$_QuestionPageModel> get copyWith =>
      __$$_QuestionPageModelCopyWithImpl<_$_QuestionPageModel>(
          this, _$identity);
}

abstract class _QuestionPageModel implements QuestionPageModel {
  factory _QuestionPageModel({required bool showDialog}) = _$_QuestionPageModel;

  @override
  bool get showDialog;
  set showDialog(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_QuestionPageModelCopyWith<_$_QuestionPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
