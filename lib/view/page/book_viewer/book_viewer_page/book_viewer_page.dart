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
            icon: JHicons.back,
            onPressed: () {
              if(Navigator.of(context).widget.pages.length > 1) {
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, "/bookDetail");
              }
            },
          ),
          backgroundColor: Colours.app_sub_white,
          title: Text(
            "스즈메의 문단속",
            style: TextStyle(
                color: Colours.app_sub_black,
                fontWeight: FontWeight.w700,
                fontSize: 22),
          ),
        )
            : null,
        key: _scaffoldKey,
        endDrawer: model?.user == null
            ? BookDrawerNoMembership()
            : BookDrawer(),
        body: GestureDetector(
          onTap: () {
            ref.read(bookViewerPageProvider(bookDetailData).notifier).changeIsShowAppBarAndBottomSheet(model?.isShowAppBarAndBottomSheet ?? false ? false : true);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // buildAppBar(), /// Appbar
              buildBookmark(ref),
              /// 북마크
              Expanded(
                // 책내용
                child: Center(
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        // child: buildEpubView(epubReaderController as BuildContext, ref)),
                        child: buildEpubView(model?.epubReaderController, ref)),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
              buildBottomSheet(context, ref),
              /// BottomSheet
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
            height: 120,
            color: Colours.app_sub_white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 5.0, right: 5.0),
                          child: Slider(
                            thumbColor: Colours.app_main,
                            inactiveColor: Colours.app_sub_grey,
                            activeColor: Colours.app_main,
                            value: ref.read(bookViewerPageProvider(bookDetailData))!.currentSliderValue,
                            max: 100,
                            divisions: 100,
                            label: ref.read(bookViewerPageProvider(bookDetailData))!.currentSliderValue.round().toString(),
                            onChanged: (double value) {
                                ref.read(bookViewerPageProvider(bookDetailData))!.currentSliderValue = value;
                            },
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text("100%"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/bookmarkList");
                          },
                          child: JHicons.bookBox),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState?.openEndDrawer();
                            },
                            icon: JHicons.hambuger),
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
            fontSize: ref.read(bookViewerPageProvider(bookDetailData))?.fontSize,
            color: Colors.black87,
            fontFamily: "NanumGothic",
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

