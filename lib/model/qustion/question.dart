import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/model/publisher/publisher.dart';
import 'package:readme_app/model/qustion/answer.dart';

// 파일명
part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  factory Question({
    required int id,
    required Publisher publisher,
    required String title,
    required String content,
    required String writeTime,
    Answer? answer,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) => _$QuestionFromJson(json);
}