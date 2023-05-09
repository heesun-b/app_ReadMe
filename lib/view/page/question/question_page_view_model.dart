import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'question_page_view_model.freezed.dart';

@unfreezed
class QuestionPageModel with _$QuestionPageModel {
  factory QuestionPageModel({
  required bool showDialog,
  }) = _QuestionPageModel;
}

class QuestionPageViewModel extends StateNotifier<QuestionPageModel?> {

  QuestionPageViewModel(super.state);

  void notifyInit() async {
    QuestionPageModel model = QuestionPageModel(showDialog: false);
    state = model;
  }

  void save(BuildContext context, ResponseDTO responseDTO) async {
    if (responseDTO.code != 1) {
      showDialog(
        context: context,
        builder: (context) {
          return   CustomDialog(
              title: "문의하기 작성 실패",
              content: responseDTO.msg ?? "문의하기 작성을 실패했습니다.",
              callback: () => Navigator.pop(context)
          );
        },
      );
    }
  }
}

final questionPageProvider = StateNotifierProvider.autoDispose<QuestionPageViewModel, QuestionPageModel?>((ref) {
    return QuestionPageViewModel(null)..notifyInit();
  },
);

