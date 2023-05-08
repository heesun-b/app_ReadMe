import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/model/qustion/answer.dart';

class QuestionDetailAnswerWidget extends StatelessWidget {
  Answer answer;

   QuestionDetailAnswerWidget({required this.answer, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 2,
        ),
        Container(
          padding: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 30),
          width: double.infinity,
          color: Colours.app_sub_grey,
          child: Text(answer.content),
        ),
      ],
    );;
  }
}
