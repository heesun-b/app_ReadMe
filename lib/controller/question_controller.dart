import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/repository/question_repository.dart';
import 'package:readme_app/view/page/question/question_page_view_model.dart';
import 'package:readme_app/view/page/question_list/question_list_page_view_model.dart';

final questionControllerProvider = Provider<QuestionController>((ref) {
  return QuestionController(ref);
});

class QuestionController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  QuestionController(this.ref);

  Future<void> saveQuestion(String title,  String content, int publisherId) async {
     ResponseDTO responseDTO = await QuestionRepository().saveQuestion(title, content, publisherId);
     if(responseDTO.code == 401) {
       Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
     } else {
       if (responseDTO.code == 1) {
         Question data = responseDTO.data;
         Navigator.pushNamed(mContext!, Move.questionDetailPage, arguments: data.id);
       } else {
         ref.read(questionPageProvider.notifier).save(mContext!, responseDTO.data);
       }
     }
  }

  Future<void> deleteQuestion(int id) async {
    ResponseDTO responseDTO = await QuestionRepository().delete(id);
    if(responseDTO.code == 401) {
      Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
    } else {
      if (responseDTO.code == 1) {
        ref.read(questionListPageProvider.notifier).notifyInit();
      } else {
        ref.read(questionListPageProvider.notifier).delete(mContext!, responseDTO.data);
      }
    }
  }



}