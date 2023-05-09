import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/repository/question_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'question_list_page_view_model.freezed.dart';

@unfreezed
class QuestionListPageModel with _$QuestionListPageModel {
  factory QuestionListPageModel({
  required List<Question> questions
  }) = _QuestionListPageModel;
}

class QuestionListPageViewModel
    extends StateNotifier<QuestionListPageModel?> {

  QuestionListPageViewModel(super.state);


  QuestionListPageModel questionModel = QuestionListPageModel(questions: []);

  void notifyInit() async {
    ResponseDTO data = await QuestionRepository().getList();
    List<Question> questions = [data.data];
    questionModel.questions = [...questions];
    state = questionModel;
  }

  void delete(BuildContext context, ResponseDTO responseDTO) async {
    if (responseDTO.code != 1) {
      showDialog(
        context: context,
        builder: (context) {
          return   CustomDialog(
              title: "문의하기 삭제 실패",
              content: responseDTO.msg ?? "문의하기 삭제를 실패했습니다.",
              callback: () => Navigator.pop(context)
          );
        },
      );
    }
  }

}

final questionListPageProvider = StateNotifierProvider.autoDispose<
    QuestionListPageViewModel, QuestionListPageModel?>(
      (ref) {
    return QuestionListPageViewModel(null)..notifyInit();
  },
);

