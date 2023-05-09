import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/book_controller.dart';
import 'package:readme_app/controller/cart_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/view/components/book_card_view.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class MainBook extends ConsumerWidget {
  int idx;
  String name;
  int count;
  String requestName;

  MainBook(this.idx, this.name, this.count, this.requestName);



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    MainPageModel? model = ref.watch(mainPageProvider);
    bool isLast = false;
    int page = 0;
    var tableUser = MySqfliteInit.getUser();

    Book? book;
    if (name == "전체") {
      book = model?.totalBooks[idx];
      isLast = model?.isTotalLast ?? false;
      page = ((model?.totalPage) ?? 0) + 1;
    } else if (name == "베스트셀러") {
      book = model?.bestBooks[idx];
      isLast = model?.isBestLast ?? false;
      page = ((model?.bestPage) ?? 0) + 1;
    } else if (name == "추천") {
      book = model?.recommendBooks[idx];
      isLast = model?.isRecommendLast ?? false;
      page = ((model?.recommendPage) ?? 0) + 1;
    } else if (name == "신간") {
      book = model?.latestBooks[idx];
      isLast = model?.isLatestLast ?? false;
      page = ((model?.latestPage) ?? 0) + 1;
    }

    return Column(
      children: [
        BookCardView(
          book: book!,
          addCart: () => ref.read(cartControllerProvider).insert(book!.id),
          chaneScrap: () => book!.isHeart
              ? ref.read(mainPageProvider.notifier).deleteScrap(name, book.id)
              : ref.read(mainPageProvider.notifier).addScarp(name, book.id),
        ),
        isLast != true && count - 1 == idx
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: UseButton(
                    title: "더보기",
                    buttonPressed: () {
                      ref.read(bookControllerProvider).pageSearch(name, page, requestName);
                    }),
              )
            : Container()
      ],
    );
  }
}
