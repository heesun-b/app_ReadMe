import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class AppInfoPage extends StatefulWidget {
  const AppInfoPage({Key? key}) : super(key: key);

  @override
  State<AppInfoPage> createState() => _AppInfoPageState();
}

class _AppInfoPageState extends State<AppInfoPage> {

  String _version = '';

  @override
  void initState() {
    super.initState();
    getVersion();
  }

  Future<void> getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;
    setState(() {
      _version = '$version+$buildNumber';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.app_sub_white,
      appBar: AppBar(
        backgroundColor: Colours.app_sub_white,
        elevation: 0,
        leading: IconButton(icon: HsStyleIcons.back,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/readme_short.png", height: 200, width: 200,),
            // SizedBox(height: 5,),
            Text("ver $_version", style: TextStyle(fontSize: Dimens.font_sp26, fontWeight: FontWeight.w700),),
          SizedBox(height: 200,),
          ],
        ),
      ),
    );
  }
}
