import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/model/publisher/publisher.dart';

// 파일명
part 'answer.freezed.dart';
part 'answer.g.dart';


@freezed
class Answer with _$Answer {
  factory Answer({
    required int id,
    required String content,
    required String writeTime,
  }) = _Answer;

  factory Answer.fromJson(Map<String, Object?> json) => _$AnswerFromJson(json);
}