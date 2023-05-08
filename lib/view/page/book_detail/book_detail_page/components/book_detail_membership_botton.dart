import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';

class BookDetailMembershipButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BookDetailMembershipButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        backgroundColor: Colours.app_sub_black,
        foregroundColor: Colours.app_sub_white,
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}