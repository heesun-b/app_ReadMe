import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/view/page/cart/cart_page/cart_page_view_model.dart';

final cartControllerProvider = Provider<CartController>((ref) {
  return CartController(ref);
});

class CartController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  CartController(this.ref);

  Future<void> deleteCartBook (int id) async {
    await BookRepository().deleteCartBook(id);
  }


}
