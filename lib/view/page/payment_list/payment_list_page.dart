import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class PaymentListPage extends StatefulWidget {
  const PaymentListPage({Key? key}) : super(key: key);

  @override
  State<PaymentListPage> createState() => _PaymentListPageState();
}

class _PaymentListPageState extends State<PaymentListPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final List<Item> _data = generateItems(8);

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "결제목록",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: 22),
        ),
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
                padding: EdgeInsets.only(left: 10, right: 5),
                constraints: BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: HsStyleIcons.back),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {
                Navigator.pushNamed(context, "/main");
              },
              icon: HsStyleIcons.homeFill,
            )
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: Column(
        children: [
          TabBar(
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
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              _memebershipPaymentList(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(
                      thickness: 15,
                      height: 15,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return ExpansionPanelList(
                            expansionCallback: (int index, bool isExpanded) {
                              setState(() {
                                _data[index].isExpanded = !isExpanded;
                              });
                            },
                            animationDuration: Duration(milliseconds: 500),
                            elevation: 1,
                            children:_data.map<ExpansionPanel>((Item item) {
                              return ExpansionPanel(
                                /// ExpansionPanel은 header와 body로 구성되어 있습니다.
                                headerBuilder: (BuildContext context, bool isExpanded) {
                                  return Column(
                                    children: [
                                      Text("2023.04.25"),
                                      Text("test"),
                                    ],
                                  );
                                },
                                body: ListTile(
                                    title: Text(item.expandedValue),
                                    subtitle:
                                    const Text('To delete this panel, tap the trash can icon'),
                                    trailing: const Icon(Icons.delete),
                                    /// 아이콘 클릭 시 리스트를 삭제합니다.
                                    onTap: () {
                                      setState(() {
                                        _data.removeWhere((Item currentItem) => item == currentItem);
                                      });
                                    }),
                                isExpanded: item.isExpanded,
                              );
                            }).toList()
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Widget _memebershipPaymentList() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(
            thickness: 15,
            height: 15,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colours.app_sub_grey))),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "멤버십명 : 스탠다드",
                        style: TextStyle(),
                      ),
                      Text("결제일 : 2023.04.12"),
                      Text("이용 기간 : 2023.04.12 ~ 2023.05.11"),
                      Text("카드 정보 : **** - **** - **** -6666"),
                      Text("결제 금액 : 9,900원"),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      /// 헤더와 본문에 들어갈 내용
      headerValue: '2023.04.25 $index',
      expandedValue: 'This is item number $index',
    );
  });
}


