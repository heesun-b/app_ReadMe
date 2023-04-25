import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/view/page/payment_list/components/payment_list_book.dart';
import 'package:readme_app/view/page/payment_list/components/payment_list_membership.dart';

class PaymentListBody extends StatefulWidget {
  const PaymentListBody({Key? key}) : super(key: key);

  @override
  State<PaymentListBody> createState() => _PaymentListBodyState();
}

class _PaymentListBodyState extends State<PaymentListBody> with TickerProviderStateMixin{

  late TabController _tabController;


  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _paymentListTabBar(),
        _paymentListTabViewer()
      ],
    );
  }

  Widget _paymentListTabViewer() {
    return Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              PaymentListMembership(),
              PaymentListBook(),
            ],
          ));
  }

  Widget _paymentListTabBar() {
    return TabBar(
        indicatorColor: Colours.app_main,
        labelStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: Dimens.font_sp16),
        controller: _tabController,
        tabs: [
          Tab(
            text: "멤버십",
          ),
          Tab(
            text: "구매도서",
          ),
        ],
      );
  }
}
