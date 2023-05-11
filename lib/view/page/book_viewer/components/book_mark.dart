import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/jh_style_icons.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/util/epub/epub_view.dart';
import 'package:readme_app/view/page/book_viewer/book_viewer_page/book_viewer_page_view_model.dart';
import 'package:readme_app/view/page/book_viewer/components/jh_style_button_add_minus.dart';

class BookMarkPage extends ConsumerWidget {
  BookDetailDTO book;
  EpubController? epubReaderController;
  BookMarkPage(this.book, this.epubReaderController, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BookViewerPageModel? model = ref.watch(bookViewerPageProvider(book));

    return Container(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: model?.bookmarks.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => ref.read(bookViewerPageProvider(book).notifier).goBookMark(model?.bookmarks[index].link ?? ""),
                child: Card(
                  child: ListTile(
                    title: Text(
                      model?.bookmarks[index].title ?? "",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}