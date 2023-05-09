
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/book_controller.dart';
import 'package:readme_app/controller/cart_controller.dart';
import 'package:readme_app/controller/scrap_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/model/small_category/small_category.dart';
import 'package:readme_app/view/components/book_card_view.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/category/category_page/category_page_view_model.dart';

class CategoryPageContent extends ConsumerWidget {

  int bigCategoryId;

   CategoryPageContent({required this.bigCategoryId, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    CategoryPageModel? model = ref.watch(categoryPageProvider);
    List<SmallCategory> smallCategory = model?.categoryTabs.where((element) => element.id == bigCategoryId).first.smallCategory ?? [];


    return  Column(
      children: [
        smallCategory.isEmpty ? Container()
            : Column(
              children: [
                SizedBox(height: 10,),
                SizedBox(
                  height: 20,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: smallCategory.length,
                    itemBuilder: (context, index) {
                      return OutlinedButton(
                        onPressed: () {
                          ref.read(categoryPageProvider.notifier).categorySearch(bigCategoryId, smallCategory: smallCategory[index].id);
                        },
                        style: OutlinedButton.styleFrom(side: BorderSide.none,
                        foregroundColor: Colours.app_sub_black,),
                        child: Text(smallCategory[index].name, style: TextStyle(
                          color: smallCategory[index].id == (model?.smallCategoryId ?? 0) ? Colours.app_main : Colours.app_sub_black
                        ),),
                      );
                  }),
                ),
                const Divider(thickness: 1,),
              ],
            ),
            Column(
              children: _listExample(context, ref),
            )
          ],
    );
  }

  List<Widget> _listExample(BuildContext context, WidgetRef ref) {

    CategoryPageModel? model = ref.watch(categoryPageProvider);
    List<Book> books =  model?.books ?? [];
    bool isLast = model?.isLast ?? false;
    int page = ((model?.page) ?? 0) + 1;
    int count = books.length;

    return List.generate(books.length, (index) {
      return Column(
        children: [
          BookCardView(book:books[index], addCart: () =>  ref.read(cartControllerProvider).insert(books[index].id),
          chaneScrap: () => books[index].isHeart
              ? ref.read(scrapControllerProvider).delete(books[index].id)
              : ref.read(scrapControllerProvider).insert(books[index].id)),

          isLast != true && count - 1 == index
              ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
            child: UseButton(title: "더보기", buttonPressed: () {
              ref.read(bookControllerProvider).pageCategorySearch(page, bigCategoryId, smallCategory: model?.smallCategoryId ?? 0);
            }
            ),
          )
              : Container()

        ],
      );
    });
  }

}
