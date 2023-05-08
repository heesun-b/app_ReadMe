import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/jh_style_icons.dart';
import 'package:readme_app/util/epub/src/ui/epub_view.dart';
import 'package:readme_app/view/page/book_viewer/book_viewer_page/book_viewer_page_view_model.dart';
import 'package:readme_app/view/page/book_viewer/components/book_drawer_no_membership.dart';
import '../components/book_drawer.dart';

class BookViewerPage extends ConsumerWidget {

  BookViewerPage(this.bookDetailData, {Key? key}) : super(key: key);
  Map<String, dynamic> bookDetailData;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context, WidgetRef ref)   {
    BookViewerPageModel? model = ref.watch(bookViewerPageProvider(bookDetailData));

    return  Scaffold(
        extendBodyBehindAppBar: true,
        appBar: model?.isShowAppBarAndBottomSheet ?? false ? AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: JHicons.back, color: ref.watch(bookViewerPageProvider(bookDetailData))?.fontColor,
            onPressed: () {
              if(Navigator.of(context).widget.pages.length > 1) {
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, "/bookDetail");
              }
            },
          ),
          backgroundColor: ref.watch(bookViewerPageProvider(bookDetailData))?.bgColor,
          title: Text(
            "${model?.title}",
            style: TextStyle(
                color: ref.watch(bookViewerPageProvider(bookDetailData))?.fontColor,
                fontWeight: FontWeight.w700,
                fontSize: 22),
          ),
        )
            : null,
        key: _scaffoldKey,
        endDrawer: model?.user == null
            ? BookDrawerNoMembership(bookDetailData)
            : BookDrawer(bookDetailData),
        body: GestureDetector(
          onTap: () {
            ref.read(bookViewerPageProvider(bookDetailData).notifier).changeIsShowAppBarAndBottomSheet(model?.isShowAppBarAndBottomSheet ?? false ? false : true);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// 북마크
              buildBookmark(ref),
              /// 책내용
                Expanded(
                child: Center(
                  child: Container(
                    color: ref.watch(bookViewerPageProvider(bookDetailData))?.bgColor,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        // child: buildEpubView(epubReaderController as BuildContext, ref)),
                        child: buildEpubView(model?.epubReaderController, ref)),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
              /// BottomSheet
              buildBottomSheet(context, ref),
            ],
          ),
        ),
      );
  }

  Widget buildBottomSheet(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: ref.read(bookViewerPageProvider(bookDetailData))!.isShowAppBarAndBottomSheet,
      child: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 70,
            color: ref.watch(bookViewerPageProvider(bookDetailData))?.bgColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed : () {
                            Navigator.pushNamed(context, "/bookmarkList");
                          },
                           icon: JHicons.bookBox, color: ref.watch(bookViewerPageProvider(bookDetailData))?.fontColor,
                        ),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState?.openEndDrawer();
                            },
                            icon: JHicons.hambuger, color: ref.watch(bookViewerPageProvider(bookDetailData))?.fontColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }


  EpubView buildEpubView(epubReaderController, WidgetRef ref) {
    return EpubView(
      controller: epubReaderController,
      builders: EpubViewBuilders<DefaultBuilderOptions>(
        options: DefaultBuilderOptions(
          textStyle: TextStyle(
            height: 1.25,
            fontSize: ref.watch(bookViewerPageProvider(bookDetailData))?.fontSize,
            color: ref.watch(bookViewerPageProvider(bookDetailData))?.fontColor,
            fontFamily: ref.watch(bookViewerPageProvider(bookDetailData))?.fontFamily,
          ),
        ),
      ),
    );
  }

  Widget buildBookmark(WidgetRef ref) {
    return Visibility(
      visible: ref.read(bookViewerPageProvider(bookDetailData))!.isBookMark,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            child: JHicons.bookmark25,
          ),
        ),
      ),
    );
  }

}

