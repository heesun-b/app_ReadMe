import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/view/components/none_list_widget.dart';
import 'package:readme_app/view/page/question_detail/question_detail_page.dart';
import 'package:readme_app/view/page/question_list/question_list_page_view_model.dart';

class QuestionListPageBody extends ConsumerWidget {
  const QuestionListPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    QuestionListPageModel? model = ref.watch(questionListPageProvider);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: model == null ? NoneListWidget(title: "문의")  : Column(
          children: List.generate(model.questions.length ?? 0, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Move.questionDetailPage,
                    arguments: model.questions[index]
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colours.app_sub_darkgrey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(model.questions[index].writeTime ?? "",
                              style: TextStyle(fontWeight: FontWeight.w700)),
                          Text(
                            model.questions[index].answer == null ? "진행중" : "답변완료",
                            style: TextStyle(color: model.questions[index].answer == null
                                    ? Colours.app_sub_blue
                                    : Colours.app_sub_darkgrey),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      Text(model.questions[index].title ?? ""),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}