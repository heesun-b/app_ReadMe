import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/view/page/question/components/question_page_body.dart';

class QuestionPage extends StatelessWidget {

  QuestionPage(this.questionId, {Key? key}) : super(key: key);

  int questionId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _questionPageAppbar(context),
      body: QuestionPageBody(questionId),
    );
  }

  AppBar _questionPageAppbar(BuildContext context) {
    return AppBar(
      elevation: 2,
      title: const Text(
        "문의하기",
        style: TextStyle(
            color: Colours.app_sub_black,
            fontWeight: FontWeight.w700,
            fontSize: 22),
      ),
      centerTitle: true,
      leading: Row(
        children: [
          IconButton(
              padding: const EdgeInsets.only(left: 10, right: 5),
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: HsStyleIcons.back),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              Navigator.pushNamed(context, Move.navigationBar);
            },
            icon: HsStyleIcons.homeFill,)
        ],
      ),
      leadingWidth: 100,
      backgroundColor: Colours.app_sub_white,
    );
  }
}
