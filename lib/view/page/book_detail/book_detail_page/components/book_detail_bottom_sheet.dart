import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_membership_botton.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_purchase_button.dart';

class BookDetailBottomSheet extends StatefulWidget {
  BookDetailBottomSheet(this.title, this.author, this.price, this.id, this.path, {Key? key}) : super(key: key);

  String title;
  String author;
  int price;
  int id;
  String path;

  @override
  State<BookDetailBottomSheet> createState() => _BookDetailBottomSheetState();
}

class _BookDetailBottomSheetState extends State<BookDetailBottomSheet> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: [
          TabBar(
            labelStyle: TextStyle(fontSize: Dimens.font_sp20),
            controller: _tabController,
            indicatorColor: Colours.app_main,
            tabs: const [
              Tab(text: '멤버십 구독'),
              Tab(text: '소장'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'ReadMe 멤버가 아니신가요?',
                          style: TextStyle(
                            fontSize: Dimens.font_sp20,
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          '멤버십을 구독하고 모든 도서를 자유롭게 열람해 보세요.',
                          style: TextStyle(
                            fontSize: Dimens.font_sp20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '월 9,900원',
                              style: TextStyle(
                                  fontSize: Dimens.font_sp20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '(VAT 포함)',
                              style: TextStyle(
                                fontSize: Dimens.font_sp16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        BookDetailMembershipButton(
                          text: '멤버십 구독하기',
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              child: Image.asset(
                                "assets/images/book.jpg",
                                height: 170,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.title,
                                  style: const TextStyle(
                                      fontSize: Dimens.font_sp26,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  widget.author,
                                  style: const TextStyle(
                                    fontSize: Dimens.font_sp20,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      '소장가 ${widget.price}원',
                                      style: const TextStyle(fontSize: Dimens.font_sp18),
                                    ),
                                    const Text(
                                      '(VAT 포함)',
                                      style: TextStyle(fontSize: Dimens.font_sp12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        //SizedBox(height: 30),
                        BookDetailPurchaseButton(
                          text: '소장하기',
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
