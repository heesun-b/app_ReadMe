import 'package:flutter/material.dart';
import 'package:readme_app/view/page/question/components/question_page_form.dart';

class QuestionPageBody extends StatefulWidget {
  QuestionPageBody(this.questionId, {Key? key}) : super(key: key);

  int questionId;

  @override
  State<QuestionPageBody> createState() => _QuestionPageBodyState();
}

class _QuestionPageBodyState extends State<QuestionPageBody> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 포커스 제거
      },
      child: QuestionPageForm(widget.questionId),
    );
  }
}
