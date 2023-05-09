import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/common/use_icons.dart';
import 'package:readme_app/controller/notice_controller.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/notification/notification_detail/notification_page_detail.dart';
import 'package:readme_app/view/page/notification/components/notification_page_view_model.dart';

class NotificationPageBody extends ConsumerWidget {
  const NotificationPageBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    NotificationPageModel? model = ref.watch(noticePageProvider);
    var count = model?.noticeList?.content.length ?? 0;
    bool isLast = model?.noticeList?.last ?? false;
    int page = (model?.noticeList?.pageable.pageNumber ?? 0) + 1;

    return SingleChildScrollView(
        child: Column (
          children: List.generate(model?.noticeList?.content.length ?? 0, (index) => Column(
            children: [
              ListTile(
                leading: UseIcons.alarm,
                title: Text(model?.noticeList?.content[index].title ?? ""),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationPageDetail(id: model?.noticeList?.content[index].id ?? 0),
                      ));
                },
              ),

              isLast != true && count - 1 == index
                  ? Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: UseButton(
                    title: "더보기",
                    buttonPressed: () {
                      ref.read(noticeControllerProvider).pageSearch(page);
                    }),
              )
                  : Container()
            ],
          )
          ),
        )
    );

  }
}
