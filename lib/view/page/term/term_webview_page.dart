import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermWebViewPage extends StatefulWidget {
  const TermWebViewPage({Key? key}) : super(key: key);
  @override
  State<TermWebViewPage> createState() => _TermWebViewPageState();
}

class _TermWebViewPageState extends State<TermWebViewPage> {
  late final WebViewController _controller;
  int _progressValue = 0;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            if (!mounted) {
              return;
            }
            setState(() {
              _progressValue = progress;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse("http://52.78.109.74:8080/term.html"));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final bool canGoBack = await _controller.canGoBack();
        if (canGoBack) {
          await _controller.goBack();
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colours.app_sub_white,
          elevation: 0,
          leading: IconButton(icon: HsStyleIcons.back,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          children: [
            WebViewWidget(
              controller: _controller,
            ),
            if (_progressValue != 100) LinearProgressIndicator(
              value: _progressValue / 100,
              backgroundColor: Colors.transparent,
              minHeight: 2,
            ) else Container(),
          ],
        ),
      ),
    );
  }
}
