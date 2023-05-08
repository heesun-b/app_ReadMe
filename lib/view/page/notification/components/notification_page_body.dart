import 'package:flutter/material.dart';
import 'package:readme_app/common/use_icons.dart';
import 'package:readme_app/view/page/notification/components/notification_page_detail.dart';

class NotificationPageBody extends StatelessWidget {
  const NotificationPageBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column (
          children: List.generate(5, (index) => ListTile(
            leading: UseIcons.alarm,
            title: Text("item$index"),
            subtitle: Text('부제목'),
            // trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPageDetail(),
                  ));
            },
          ) ),
        )
    );

  }
}
