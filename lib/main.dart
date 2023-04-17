import 'package:flutter/material.dart';
import 'package:readme_app/common/use_button.dart';
import 'package:readme_app/page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/main",
        routes:
        {
          // "/category" : CategoryPage(),
          // "/search" : SearchPage(),
          "/main" : (context) => MainPage(),
          // "/storage" : StoragePage(),
          // "/user" : UserPage(),
        },
      );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}