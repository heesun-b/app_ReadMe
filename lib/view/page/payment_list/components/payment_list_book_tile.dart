import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class PaymentListBookTile extends StatefulWidget {
  const PaymentListBookTile({Key? key}) : super(key: key);

  @override
  State<PaymentListBookTile> createState() => _PaymentListBookTileState();
}

class _PaymentListBookTileState extends State<PaymentListBookTile> {
  final List<Item> _data = generateItems(5);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            children: _data.map<ExpansionPanel>((Item item) {
              int index = _data.indexOf(item);
              return ExpansionPanel(
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: _bookTileHeader(item),
                  );
                },
                body: _bookTileContent(),
                isExpanded: item.isExpanded,
              );
            }).toList());
      },
    );
  }

  Widget _bookTileHeader(Item item) {
    return Row(
                    children: [
                      Text(
                        item.headerValue,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: Dimens.font_sp18),
                      ),
                      Text(
                        "총 2건",
                        style: TextStyle(
                            fontSize: Dimens.font_sp12,
                            color: Colours.app_sub_blue),
                      ),
                    ],
                  );
  }

  Widget _bookTileContent() {
    return Column(
                children: [
                  Column(
                    children: List.generate(2, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10, left: 20, right: 20),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colours.app_sub_grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/book.jpg",
                                  width: 70,
                                  height: 90,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("도서명 : "),
                                          Expanded(
                                            child: Text(
                                              "1984",
                                              overflow: TextOverflow.visible,
                                              maxLines: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text("출판사 : 데이원"),
                                      Text("결제금액 : 15,000원"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Column(
                          children: [
                            Text(
                              "카드 정보 : **** - **** - **** - 0000",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "총 금액 : 30,000원",
                              style: TextStyle(
                                  fontSize: Dimens.font_sp16,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      )),
                ],
              );
  }
}






class Item {
  Item({
    // required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  // String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      // 인덱스 순서 보기 위해 임의로 넣은 값
      headerValue: '2023.04.25 - $index',
      // expandedValue: 'This is item number $index',
    );
  });
}
