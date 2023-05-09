// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeDTO _$$_NoticeDTOFromJson(Map<String, dynamic> json) => _$_NoticeDTO(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      imageFile: FileDTO.fromJson(json['imageFile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NoticeDTOToJson(_$_NoticeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'imageFile': instance.imageFile,
    };
