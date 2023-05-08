import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/repository/question_repository.dart';

class QuestionDetailModel {
  Question question;
  QuestionDetailModel(this.question);
}

class QuestionDetailViewModel extends StateNotifier<QuestionDetailModel?> {
  QuestionDetailViewModel(super.state);

  void notifyInit(Question question) async {
    state = QuestionDetailModel(question);
  }
}

final questionListDetailProvier = StateNotifierProvider.family.autoDispose<QuestionDetailViewModel, QuestionDetailModel?, Question>((ref, question) {
      return QuestionDetailViewModel(null)..notifyInit(question);
});




