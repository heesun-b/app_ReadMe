
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/view/page/category/category_page/category_page.dart';
import 'package:readme_app/view/page/content_box/content_box_page/content_box_page.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';
import 'package:readme_app/view/page/search/search_list_page/search_list_page.dart';
import 'package:readme_app/view/page/user/user_page/user_page.dart';


class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({Key? key}) : super(key: key);

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar>  with AutomaticKeepAliveClientMixin{

  int _selectedIndex = 0;

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return CategoryPage();
      case 1:
        return SearchListPage();
      case 2:
        return MainPage();
      case 3:
        return ContentBoxPage();
      case 4:
        return UserPage();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildScreen(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        iconSize: Dimens.font_sp40,
        backgroundColor: Colours.app_sub_white,
        selectedItemColor: Colours.app_main,
        unselectedItemColor: Colours.app_sub_black,
        onTap:(index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: UseIcons.category,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: UseIcons.search,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: UseIcons.home,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: UseIcons.box,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: UseIcons.userinfo,
            label: "",
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

