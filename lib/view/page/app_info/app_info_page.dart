import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class AppInfoPage extends StatelessWidget {
  const AppInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.app_sub_white,
      appBar: AppBar(
        backgroundColor: Colours.app_sub_white,
        elevation: 0,
        leading: IconButton(icon: HsStyleIcons.back, onPressed: () {
          Navigator.pop(context);

        },),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/readme_short.png", height: 200, width: 200,),
            SizedBox(height: 20,),
            Text("ver 1.0.0", style: TextStyle(fontSize: Dimens.font_sp26, fontWeight: FontWeight.w700),)
          ],
        ),
      ),
    );
  }
}
