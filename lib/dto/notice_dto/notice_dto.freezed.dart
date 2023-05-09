// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeDTO _$NoticeDTOFromJson(Map<String, dynamic> json) {
  return _NoticeDTO.fromJson(json);
}

/// @nodoc
mixin _$NoticeDTO {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  FileDTO get imageFile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeDTOCopyWith<NoticeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeDTOCopyWith<$Res> {
  factory $NoticeDTOCopyWith(NoticeDTO value, $Res Function(NoticeDTO) then) =
      _$NoticeDTOCopyWithImpl<$Res, NoticeDTO>;
  @useResult
  $Res call({int id, String title, String content, FileDTO imageFile});

  $FileDTOCopyWith<$Res> get imageFile;
}

/// @nodoc
class _$NoticeDTOCopyWithImpl<$Res, $Val extends NoticeDTO>
    implements $NoticeDTOCopyWith<$Res> {
  _$NoticeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? imageFile = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FileDTOCopyWith<$Res> get imageFile {
    return $FileDTOCopyWith<$Res>(_value.imageFile, (value) {
      return _then(_value.copyWith(imageFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NoticeDTOCopyWith<$Res> implements $NoticeDTOCopyWith<$Res> {
  factory _$$_NoticeDTOCopyWith(
          _$_NoticeDTO value, $Res Function(_$_NoticeDTO) then) =
      __$$_NoticeDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content, FileDTO imageFile});

  @override
  $FileDTOCopyWith<$Res> get imageFile;
}

/// @nodoc
class __$$_NoticeDTOCopyWithImpl<$Res>
    extends _$NoticeDTOCopyWithImpl<$Res, _$_NoticeDTO>
    implements _$$_NoticeDTOCopyWith<$Res> {
  __$$_NoticeDTOCopyWithImpl(
      _$_NoticeDTO _value, $Res Function(_$_NoticeDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? imageFile = null,
  }) {
    return _then(_$_NoticeDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as FileDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeDTO with DiagnosticableTreeMixin implements _NoticeDTO {
  _$_NoticeDTO(
      {required this.id,
      required this.title,
      required this.content,
      required this.imageFile});

  factory _$_NoticeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeDTOFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final FileDTO imageFile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoticeDTO(id: $id, title: $title, content: $content, imageFile: $imageFile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoticeDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('imageFile', imageFile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticeDTOCopyWith<_$_NoticeDTO> get copyWith =>
      __$$_NoticeDTOCopyWithImpl<_$_NoticeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeDTOToJson(
      this,
    );
  }
}

abstract class _NoticeDTO implements NoticeDTO {
  factory _NoticeDTO(
      {required final int id,
      required final String title,
      required final String content,
      required final FileDTO imageFile}) = _$_NoticeDTO;

  factory _NoticeDTO.fromJson(Map<String, dynamic> json) =
      _$_NoticeDTO.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  FileDTO get imageFile;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeDTOCopyWith<_$_NoticeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
