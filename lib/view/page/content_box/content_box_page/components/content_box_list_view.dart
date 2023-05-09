import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/view/components/book_card_view.dart';

class ContentBoxListView extends StatelessWidget {
  const ContentBoxListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          Container(height:20 , color: Colors.yellow,);
          // return BookCardView(book: book, chaneScrap: chaneScrap, addCart: addCart);
        },
      ),
    );
  }
}
