
import 'package:flutter/material.dart';
import 'package:readme_app/view/page/cart/cart_page/cart_page.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';


class Move {
  static String categoryPage = "/category";
  static String searchPage = "/search";
  static String mainPage = "/main";
  static String storagePage = "/storage";
  static String userPage = "/user";
  static String cartPage = "/cart";
}


Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    // Move.categoryPage: (context) => CategoryPage(),
    // Move.searchPage: (context) => SearchPage(),
    Move.mainPage: (context) => MainPage(),
    // Move.storagePage: (context) => StoragePage(),
    // Move.userPage: (context) => UserPage(),
    Move.cartPage : (context) => CartPage(),
  };
}