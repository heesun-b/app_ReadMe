import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/view/components/custom_dialog.dart';
import 'package:readme_app/view/page/user/user_page_view_model.dart';

class UserPageSubButton extends ConsumerWidget {
  const UserPageSubButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserPageModel? userModel = ref.watch(userPageProvider);

    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                    bottom:
                    BorderSide(color: Colours.app_sub_grey, width: 2.0),
                    right:
                    BorderSide(color: Colours.app_sub_grey, width: 2.0))),
            child: InkWell(
              onTap: () {
                if(userModel != null) {
                  Navigator.pushNamed(context, "/notification");
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return   CustomDialog(title: "로그인 후 이용 가능",
                          content: "로그인 하시겠습니까?",
                          callback: () => Navigator.pushNamed(context, "/login"));
                    },
                  );
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HsStyleIcons.alarm,
                  SizedBox(
                    height: 5,
                  ),
                  Text("공지")
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                    bottom:
                    BorderSide(color: Colours.app_sub_grey, width: 2.0),
                    right:
                    BorderSide(color: Colours.app_sub_grey, width: 2.0))),
            child: InkWell(
              onTap: () {
                if(userModel != null) {
                  Navigator.pushNamed(context, "/question");
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return   CustomDialog(title: "로그인 후 이용 가능",
                          content: "로그인 하시겠습니까?",
                          callback: () => Navigator.pushNamed(context, "/login"));
                    },
                  );
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HsStyleIcons.card,
                  SizedBox(
                    height: 5,
                  ),
                  Text("문의하기")
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                    bottom:
                    BorderSide(color: Colours.app_sub_grey, width: 2.0))),
            child: InkWell(
              onTap: () {
                if(userModel != null) {
                  Navigator.pushNamed(context, "/questionList");
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return   CustomDialog(title: "로그인 후 이용 가능",
                          content: "로그인 하시겠습니까?",
                          callback: () => Navigator.pushNamed(context, "/login"));
                    },
                  );
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HsStyleIcons.review,
                  SizedBox(
                    height: 5,
                  ),
                  Text("문의내역")
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
