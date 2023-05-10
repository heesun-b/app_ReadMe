import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';

class ContentBoxPage extends StatefulWidget {

  ContentBoxPage({Key? key}) : super(key: key);


  @override
  State<ContentBoxPage> createState() => _ContentBoxPageState();
}

class _ContentBoxPageState extends State<ContentBoxPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colours.app_sub_white,
          title: const Text(
            "보관함",
            style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: Dimens.font_sp20,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Column(
              children: const [
                Divider(
                  height: 2,
                  color: Colours.app_sub_black,
                ),
                TabBar(
                  labelColor: Colours.app_sub_black,
                  indicatorColor: Colours.app_main,
                  labelStyle: TextStyle(fontWeight: FontWeight.w700),
                  tabs: <Widget>[
                    Tab(
                      text: "최근본",
                    ),
                    Tab(
                      text: "스크랩",
                    ),
                    Tab(
                      text: "구매",
                    ),
                    Tab(
                      text: "북마크",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            buildGridView(),
            buildGridView(),
            buildGridView(),
            buildGridView(),
          ],
        ),
      ),
    );
  }

  GridView buildGridView() {
    return GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: cartList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (BuildContext context, int index) {
          final item = cartList[index];
          return TextButton(
            onPressed: () {
              // Navigator.pushNamed(context, "/main", arguments: {
              // 'title': item.title,
              // 'image': item.image,
              // },);
            },
            child: CachedNetworkImage(
              imageUrl: item.image ?? "",
              height: 150,
              width: 100,
              placeholder: (context, url) =>
                  Center(
                    child: LoadingAnimationWidget.twoRotatingArc(
                      size: 50,
                      color: Colours.app_main,
                    ),
                  ),
            ),

          );
        }
    );
  }
}