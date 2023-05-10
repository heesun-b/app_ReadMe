import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/sqflite/table/table_main_tab.dart';
import 'package:readme_app/view/page/main/main_page/components/main_ad_screen.dart';
import 'package:readme_app/view/page/main/main_page/components/main_book_list.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    MainPageModel? model = ref.watch(mainPageProvider);

    return model == null ? Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colours.app_main,
      child: Center(
        child:
        Lottie.network(
            'https://assets5.lottiefiles.com/packages/lf20_JvPPeJ.json',
        width: 200, height: 300, fit: BoxFit.contain),
        // LoadingAnimationWidget.staggeredDotsWave(
        //   size: 100,
        //   color: Colours.app_sub_white,
        // ),
      ),
    )  :DefaultTabController(
      length: model.mainTabs.length ,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                elevation: 0,
                backgroundColor: Colours.app_sub_white,
                flexibleSpace: FlexibleSpaceBar(
                  background: MainAdScreen(),
                ),
                pinned: true,
                expandedHeight: 500,
                leading: IconButton(
                  icon: Image.asset(
                    "assets/images/img.png",
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Move.navigationBar);
                  },
                ),
                actions: [
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: YhIcons.alarm,
                    onPressed: () {
                      Navigator.pushNamed(context, Move.alarmPage);
                    },
                  ),
                  IconButton(
                      visualDensity: VisualDensity.compact,
                      icon: YhIcons.cart,
                      onPressed: () {
                        Navigator.pushNamed(context, Move.cartPage);
                      }),
                  SizedBox(width: 20,)
                ],
              ),
              SliverAppBar(
                toolbarHeight: 0,
                backgroundColor: Colours.app_sub_white,
                elevation: 1.0,
                pinned: true,
                bottom: TabBar(
                  labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp16),
                  indicatorColor: Colours.app_main,
                  indicatorWeight: 3,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: model?.mainTabs != null ? List.generate(model!.mainTabs.length, (index) =>  Tab(text: model.mainTabs[index].name),) : [const Tab(text: "전체",)]
                ),
              )
            ];
          },
          body: TabBarView(
            children: model?.mainTabs != null ?  List.generate(model!.mainTabs.length, (index) =>  MainBookList(model.mainTabs[index].name, model.mainTabs[index].requestName),)
              : [
                  Container()
              ]
            ),
        ),
      ),
    );
  }
}
