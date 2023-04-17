
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:readme_app/page/main_page.dart';

class Move {
  static String categoryPage = "/category";
  static String searchPage = "/search";
  static String mainPage = "/main";
  static String storagePage = "/storage";
  static String userPage = "/user";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    // Move.categoryPage: (context) => CategoryPage(),
    // Move.searchPage: (context) => SearchPage(),
    Move.mainPage: (context) => MainPage(),
    // Move.storagePage: (context) => StoragePage(),
    // Move.userPage: (context) => UserPage(),
  };
}