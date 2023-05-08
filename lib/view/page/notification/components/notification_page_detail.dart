import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class NotificationPageDetail extends StatefulWidget {
  const NotificationPageDetail({Key? key}) : super(key: key);

  @override
  State<NotificationPageDetail> createState() => _NotificationPageDetailState();
}

class _NotificationPageDetailState extends State<NotificationPageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "공지",
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
      ),
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
                        "useQuestion.title",
                        style: TextStyle(
                            fontSize: Dimens.font_sp18,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Text("useQuestion.time"),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                child: Text(
                  "useQuestion.content",
                  style: TextStyle(fontSize: Dimens.font_sp16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
