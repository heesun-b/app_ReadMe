import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/question/components/question_page_form.dart';

class QuestionPageBody extends StatefulWidget {
  const QuestionPageBody({Key? key}) : super(key: key);

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
      child: QuestionPageForm(),
    );
  }
}
