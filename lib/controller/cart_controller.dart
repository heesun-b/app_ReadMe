import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/view/page/cart/cart_page/cart_page_view_model.dart';

final cartControllerProvider = Provider<CartController>((ref) {
  return CartController(ref);
});

class CartController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  CartController(this.ref);

  Future<void> changeAllChecked (value) async {
    ref.read(cartPageProvider.notifier).changeAllChecked(value);
  }


}
