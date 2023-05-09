import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/page/content_box/content_box_page/components/content_box_list_view.dart';
import '../../../../model/cart_mock_data.dart';

class ContentBoxPage extends StatefulWidget {
  const ContentBoxPage({super.key});

  @override
  State<ContentBoxPage> createState() => _ContentBoxPageState();
}

class _ContentBoxPageState extends State<ContentBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colours.app_sub_white,
        title: Text(
          "보관함",
          style: TextStyle(
            color: Colours.app_sub_black,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        leading: Row(children: [
          IconButton(
              padding: EdgeInsets.only(left: 10, right: 5),
              constraints: BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: HsStyleIcons.back),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: List.generate(4, (index) {
                return Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const ContinuousRectangleBorder(
                            borderRadius: BorderRadius.zero),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        // backgroundColor: bigCategory.id == bigCategoryId ?  Colours.app_main : Colours.app_sub_black,
                        backgroundColor: Colours.app_sub_black,
                        foregroundColor: Colours.app_sub_white,
                      ),
                      child: Text("test")
                  ),
                );
              }),
            ),
            ContentBoxListView(),
          ],
        ),
      )
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
          onPressed: (){
            // Navigator.pushNamed(context, "/main", arguments: {
            // 'title': item.title,
            // 'image': item.image,
            // },);
          },
          child: Image.network(
            "${item.image}",
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

}
