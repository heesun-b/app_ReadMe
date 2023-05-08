import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/view/page/question_detail/question_detail_answer_widget.dart';
import 'package:readme_app/view/page/question_detail/question_detail_view_model.dart';

class QuestionDetailPage extends ConsumerWidget {

  Question question;
  QuestionDetailPage({required this.question, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    QuestionDetailModel? model = ref.watch(questionListDetailProvier(question));

    if(model == null) {
      return const CircularProgressIndicator();
    } else {
      return Scaffold(
        appBar: _questionListDetailAppbar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          model.question.title ?? "",
                          style: const TextStyle(
                              fontSize: Dimens.font_sp18,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Text(model.question.writeTime ?? ""),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                  child: Text(
                    model.question.content,
                    style: const TextStyle(fontSize: Dimens.font_sp16),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                model.question.answer != null ?
                    QuestionDetailAnswerWidget(answer: model.question.answer!) :
                    Container()
              ],
            ),
          ),
        ),
      );
    }
  }


  AppBar _questionListDetailAppbar(BuildContext context) {
    return AppBar(
      elevation: 2,
      title: Text(
        "문의 상세",
        style: TextStyle(
            color: Colours.app_sub_black,
            fontWeight: FontWeight.w700,
            fontSize: 22),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            padding: EdgeInsets.only(left: 10, right: 5),
            constraints: BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: HsStyleIcons.delete),
      ],
      backgroundColor: Colours.app_sub_white,
      actionsIconTheme: IconThemeData(color: Colours.app_sub_black),
    );
  }
}