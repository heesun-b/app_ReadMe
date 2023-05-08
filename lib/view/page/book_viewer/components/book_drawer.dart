import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/view/page/book_viewer/book_viewer_page/book_viewer_page_view_model.dart';
import 'package:readme_app/view/page/book_viewer/components/jh_style_button_add_minus.dart';

import '../../../../core/constants/jh_style_icons.dart';


class BookDrawer extends ConsumerWidget {
  BookDetailDTO book;
  BookDrawer(this.book, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BookViewerPageModel? model = ref.watch(bookViewerPageProvider(book));

    return Container(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                trailing: Container(
                  width: 250,
                  child: Text(
                    "배경 설정",
                    style: TextStyle(
                        fontSize: Dimens.font_sp20, fontWeight: FontWeight.w700),
                  ),
                ),
                contentPadding: EdgeInsets.only(right: 25),
              ),
              ListTile(
                trailing: Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: IconButton(
                            onPressed: () {
                              ref.read(bookViewerPageProvider(book).notifier).bgColorBlack();
                              print("검은색 테마");
                            },
                            icon: JHicons.colorCircleBlack),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              ref.read(bookViewerPageProvider(book).notifier).bgColorWhite();
                              print("하얀색 테마");
                            },
                            icon: JHicons.colorCircleWhite),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              ref.read(bookViewerPageProvider(book).notifier).bgColorMain();
                              print("메인 테마");
                            },
                            icon: JHicons.colorCircleMain),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              ref.read(bookViewerPageProvider(book).notifier).bgColorGrey();
                              print("회색 테마");
                            },
                            icon: JHicons.colorCircleGrey),
                      ),
                    ],
                  ),
                ),
                contentPadding: EdgeInsets.only(right: 30),
              ),
              ListTile(
                trailing: Container(
                  width: 250,
                  child: Text(
                    "글자 크기",
                    style: TextStyle(
                        fontSize: Dimens.font_sp20, fontWeight: FontWeight.w700),
                  ),
                ),
                contentPadding: EdgeInsets.only(right: 25),
              ),
              ListTile(
                trailing: Container(
                  height: 50,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 80,
                            child: jhUseButtonAddMinus(
                              title: "",
                              buttonPressed: () {
                                ref.read(bookViewerPageProvider(book).notifier).fontSizeDown();
                                print("프로그레스 = ${model?.epubReaderController.currentValue?.progress}");
                              },
                            ),
                          ),
                          Positioned(
                            child: JHicons.minus,
                            bottom: 3,
                            left: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 80,
                            child: jhUseButtonAddMinus(
                              title: "",
                              buttonPressed: () {
                                ref.watch(bookViewerPageProvider(book).notifier).fontSizeUp();
                              },
                            ),
                          ),
                          Positioned(
                            child: JHicons.add,
                            bottom: 3,
                            left: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                contentPadding: EdgeInsets.only(right: 50),
              ),
              SizedBox(
                width: 5,
              ),
              ListTile(
                trailing: Container(
                  width: 250,
                  child: Text(
                    "폰트 설정",
                    style: TextStyle(
                        fontSize: Dimens.font_sp20, fontWeight: FontWeight.w700),
                  ),
                ),
                contentPadding: EdgeInsets.only(right: 25),
              ),
              ListTile(
                trailing: Container(
                  height: 50,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 80,
                        child: TextButton(
                          child: Text("나눔고딕",
                              style: TextStyle(
                                  color: Colours.app_sub_black,
                                  fontWeight: FontWeight.w500)),
                          onPressed: () {
                            ref.read(bookViewerPageProvider(book).notifier).changeFontFamily("NanumGothic");
                          },
                        ),
                      ),
                      Container(
                        width: 80,
                        child: TextButton(
                          child: Text("나눔명조",
                              style: TextStyle(
                                  color: Colours.app_sub_black,
                                  fontWeight: FontWeight.w500)),
                          onPressed: () {
                            ref.read(bookViewerPageProvider(book).notifier).changeFontFamily("NanumMyeongjo");
                          },
                        ),
                      ),
                      Container(
                        width: 80,
                        child: TextButton(
                          child: Text(
                            "마루부리",
                            style: TextStyle(
                                color: Colours.app_sub_black,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {
                            ref.read(bookViewerPageProvider(book).notifier).changeFontFamily("Maruburi");
                          },
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                contentPadding: EdgeInsets.only(right: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}