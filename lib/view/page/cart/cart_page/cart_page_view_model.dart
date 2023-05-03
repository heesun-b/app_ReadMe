import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/model/cart_mock_data.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'cart_page_view_model.freezed.dart';

@unfreezed
class CartPageModel with _$CartPageModel {
  factory CartPageModel({
    required bool isAllChecked,
    required int totalPrice,
    required int totalCount,
    //TODO 추후에 객체 변경
    required List<CartMockData> cartBooks,
  }) = _CartPageModel;
}

class CartPageViewModel extends StateNotifier<CartPageModel?> {
  CartPageViewModel(super.state);

  void notifyInit() async {
    CartPageModel cartMockModel = CartPageModel(
        totalPrice: 0, totalCount: 0, cartBooks: [], isAllChecked: false);
    // TODO 추후에 객체 변경 AND jwt 혹은 user_id 추가 필요
    List<CartMockData> cartMockList = await BookRepository().findCartList();
    cartMockModel.cartBooks = cartMockList;
    state = cartMockModel;
  }

  void changeAllChecked(value) {
    List<CartMockData> newList = [];

    if (value == true) {
      state!.cartBooks.forEach((e) {
        e.ischecked = true;
        newList.add(e);
        state = state!.copyWith(cartBooks: newList, isAllChecked: true);
      });
    } else {
      state!.cartBooks.forEach((e) {
        e.ischecked = false;
        newList.add(e);
        state = state!.copyWith(cartBooks: newList, isAllChecked: false);
      });
    }
  }

  void changedOneCheck(value, int index) {
    List<CartMockData> newList = [];
    int falseCount = 0;

    if (value == true) {
      for(int i = 0; i < state!.cartBooks.length; i ++) {
        if(i == index) {
          state!.cartBooks[index].ischecked = true;
        }
        newList.add(state!.cartBooks[i]);
      }

      state!.cartBooks.forEach((element) {
        if (element.ischecked == false) {
          falseCount++;
        }
      });
      state = state!.copyWith(cartBooks: state!.cartBooks, isAllChecked: falseCount == 0 ? true : false);

    } else {

      for(int i = 0; i < state!.cartBooks.length; i ++) {
        if(i == index) {
          state!.cartBooks[index].ischecked = false;
        }
        newList.add(state!.cartBooks[i]);
      }

      state = state!.copyWith(cartBooks: state!.cartBooks);
      state!.cartBooks.forEach((element) {
        if (element.ischecked == false) {
          falseCount++;
        }
      });
      state!.cartBooks[index].ischecked = false;
      state = state!.copyWith(cartBooks: state!.cartBooks, isAllChecked: falseCount == 0 ? true : false);
    }
  }
}

final cartPageProvider =
    StateNotifierProvider.autoDispose<CartPageViewModel, CartPageModel?>((ref) {
  return CartPageViewModel(null)..notifyInit();
});
