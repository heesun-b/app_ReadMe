import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/category.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/view/page/category/category_page/components/example/category_page_content.dart';

class CategoryPageBody extends StatefulWidget {
  const CategoryPageBody({Key? key}) : super(key: key);

  @override
  State<CategoryPageBody> createState() => _CategoryPageBodyState();
}

class _CategoryPageBodyState extends State<CategoryPageBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
              children: List.generate(4, (index) {
            return Expanded(
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(bigCategory[index]),
                  style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    backgroundColor: Colours.app_sub_black,
                    foregroundColor: Colours.app_sub_white,
                  )),
            );
          })),Row(
              children: List.generate(4, (index) {
            return Expanded(
              child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(bigCategory[4+index]),
                  style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    backgroundColor: Colours.app_sub_black,
                    foregroundColor: Colours.app_sub_white,
                  )),
            );
          })),
          CategoryPageContent(),
        ],
      ),
    );
  }
}
