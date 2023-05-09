// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as int,
      publisher: Publisher.fromJson(json['publisher'] as Map<String, dynamic>),
      title: json['title'] as String,
      content: json['content'] as String,
      writeTime: json['writeTime'] as String,
      answer: json['answer'] == null
          ? null
          : Answer.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'publisher': instance.publisher,
      'title': instance.title,
      'content': instance.content,
      'writeTime': instance.writeTime,
      'answer': instance.answer,
    };
