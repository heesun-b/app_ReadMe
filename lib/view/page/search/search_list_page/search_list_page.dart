import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/book_controller.dart';
import 'package:readme_app/controller/cart_controller.dart';
import 'package:readme_app/controller/scrap_controller.dart';
import 'package:readme_app/view/components/book_card_view.dart';
import 'package:readme_app/view/page/search/search_list_page/search_list_page_view_model.dart';
import '../../../../core/constants/colours.dart';
import '../../../../core/constants/hs_style_icons.dart';
import '../../../../core/constants/jh_style_icons.dart';
import '../../../../core/constants/yh_style_icons.dart';

class SearchListPage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SearchListPageModel? model = ref.watch(searchListPageProvider);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            key: model?.scaffoldKey,
            appBar: searchAppBar(ref, context),
            body: SingleChildScrollView(
              child: model?.isShow ?? false
                  ? buildSearchSuccess(ref)
                  : buildRecentlyWords(ref),
            )
        ),
      );
  }

  Column buildRecentlyWords(WidgetRef ref) {
    BookController bookController = ref.read(bookControllerProvider);
    SearchListPageModel? model = ref.watch(searchListPageProvider);
    var provider = ref.watch(searchListPageProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        model?.tableSearches.isNotEmpty ?? false ?
        const Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10),
          child: Text(
            "최근 검색어",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ) : Container(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: model?.tableSearches.isNotEmpty ?? false
                ? ListView.builder(
                    itemCount: model?.tableSearches.length ?? 0,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(model?.tableSearches[index].searchText ?? ""),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.clear,
                            color: Colours.app_sub_black,
                          ),
                          onPressed: () {
                            provider.deleteSearchKeyword(model?.tableSearches[index].searchText ?? "");
                          },
                        ),
                        onTap: () {
                          bookController.search(model?.tableSearches[index].searchText ?? "");
                        },
                      );
                    })
                : Column(
                    children: [
                      SizedBox(height: 200),
                      Center(child: Text("최근 검색어가 없습니다.",style: TextStyle(fontSize: 16)))
                    ]
                ),
          ),
        ),
      ],
    );
  }

  Widget buildSearchSuccess(WidgetRef ref) {
    SearchListPageModel? model = ref.watch(searchListPageProvider);
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: model?.books.length ?? 0,
      itemBuilder: (context, index) {
        return BookCardView(
          book: model!.books[index],
          addCart: () => ref.read(cartControllerProvider).insert(model.books[index].id),
          chaneScrap: () => model.books[index].isHeart
              ? ref.read(scrapControllerProvider).delete(model.books[index].id)
              : ref.read(scrapControllerProvider).insert(model.books[index].id),
        );
      },
    );
  }

  AppBar searchAppBar(WidgetRef ref, BuildContext context) {
    SearchListPageModel? model = ref.watch(searchListPageProvider);
    BookController bookController = ref.read(bookControllerProvider);
    return AppBar(
      elevation: 1,
      actions: [
        IconButton(onPressed: () {
          FocusScope.of(context).unfocus();
          if ((model?.textController.text ?? "") != "") {
            bookController.search(model?.textController.text ?? "");
          }
        }, icon: JHicons.search)
      ],
      backgroundColor: Colours.app_sub_white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Container(child: UseIcons.search),
          Form(
            key: model?.formKey,
            child: Row(
              children: <Widget>[
                Container(
                  width: 250,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: TextFormField(
                    focusNode: model?.focusNode,
                    controller: model?.textController,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '검색어를 입력해주세요',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      if (value != "") {
                        bookController.search(value);
                      }
                    },
                  ),
                ),
                // Container(child: JHicons.search),
              ],
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }

}
