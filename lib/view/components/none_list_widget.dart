import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class NoneListWidget extends StatefulWidget {
  String title;
  NoneListWidget({required this.title, Key? key}) : super(key: key);

  @override
  State<NoneListWidget> createState() => _NoneListWidgetState();
}

class _NoneListWidgetState extends State<NoneListWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("${widget.title} 내역이 존재하지 않습니다.", style: TextStyle(
          fontSize: Dimens.font_sp24, fontWeight: FontWeight.w700, color: Colours.app_sub_grey
        ),),
      ),
    );
  }
}
