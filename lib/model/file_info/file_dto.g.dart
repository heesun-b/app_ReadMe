// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileDTO _$$_FileDTOFromJson(Map<String, dynamic> json) => _$_FileDTO(
      id: json['id'] as int,
      fileName: json['fileName'] as String,
      fileUrl: json['fileUrl'] as String,
    );

Map<String, dynamic> _$$_FileDTOToJson(_$_FileDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
    };

_$_FileListDTO _$$_FileListDTOFromJson(Map<String, dynamic> json) =>
    _$_FileListDTO(
      id: json['id'] as int,
      imageFile: FileDTO.fromJson(json['imageFile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FileListDTOToJson(_$_FileListDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageFile': instance.imageFile,
    };
