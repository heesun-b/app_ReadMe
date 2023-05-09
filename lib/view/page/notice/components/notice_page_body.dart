import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/notice_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/notice/components/notice_page_view_model.dart';
import 'package:readme_app/view/page/notice/notification_detail/notice_page_detail.dart';

class NoticePageBody extends ConsumerWidget {
  const NoticePageBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    NoticePageModel? model = ref.watch(noticePageProvider);

    var count   = model?.noticeList?.content.length ?? 0;
    bool isLast = model?.noticeList?.last ?? false;
    int page    = (model?.noticeList?.pageable.pageNumber ?? 0) + 1;

    return SingleChildScrollView(
        child: Column (
          children: List.generate(model?.noticeList?.content.length ?? 0, (index) => Column(
            children: [
              ListTile(
                title: Text(model?.noticeList?.content[index].title ?? "",
                style:  TextStyle(fontSize: Dimens.font_sp16),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NoticePageDetail(id: model?.noticeList?.content[index].id ?? 0),
                      ));
                },
              ),
              Divider(thickness: 1),
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
