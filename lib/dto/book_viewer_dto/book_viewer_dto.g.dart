// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_viewer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookViewerDTO _$$_BookViewerDTOFromJson(Map<String, dynamic> json) =>
    _$_BookViewerDTO(
      book: Book.fromJson(json['book'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookViewerDTOToJson(_$_BookViewerDTO instance) =>
    <String, dynamic>{
      'book': instance.book,
      'user': instance.user,
    };
