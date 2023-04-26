import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/view/page/payment_list/components/payment_list_book_tile.dart';

class PaymentListBook extends StatefulWidget {
  const PaymentListBook({Key? key}) : super(key: key);

  @override
  State<PaymentListBook> createState() => _PaymentListBookState();
}

class _PaymentListBookState extends State<PaymentListBook> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(
            thickness: 15,
            height: 15,
          ),
          PaymentListBookTile(),
        ],
      ),
    );
    ;
  }
}
