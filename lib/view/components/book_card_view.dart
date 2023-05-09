import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page.dart';

class BookCardView extends ConsumerWidget {
  Book book;
  final VoidCallback chaneScrap;
  final VoidCallback addCart;

  BookCardView(
      {required this.book,
      required this.chaneScrap,
      required this.addCart,
      Key? key})
      : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  BookDetailPage(bookId:book.id),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colours.app_sub_darkgrey),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Image.network(
                book.coverFile.fileUrl,
                width: 90,
                height: 110,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: Dimens.font_sp18,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${book.author} | ${book.publisher.businessName}",
                    style: const TextStyle(fontSize: Dimens.font_sp14),
                  ),
                  Row(
                    children: [
                      YhIcons.star,
                      Text(
                        book.stars.toString(),
                        style: const TextStyle(fontSize: Dimens.font_sp14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "소장가 ${book.price}",
                        style: const TextStyle(fontSize: Dimens.font_sp14),
                      ),
                      const SizedBox(width: 100),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed :() => chaneScrap.call(),
                        icon: book.isHeart == false
                            ? YhIcons.heart
                            : YhIcons.heartFill,
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed:() =>
                            addCart.call(),
                          // ref.read(cartControllerProvider).insert(book!.id);
                        icon: YhIcons.cart2,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
