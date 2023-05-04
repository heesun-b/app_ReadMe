import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/dto/cart_dto/cart_dto.dart';

// 파일명
part 'cart_dto_list.freezed.dart';
part 'cart_dto_list.g.dart';

@freezed
class CartDTOList with _$CartDTOList {
  factory CartDTOList({
    required List<CartDTO> cartList,
  }) = _CartDTOList;

  factory CartDTOList.fromJson(Map<String, Object?> json)  => _$CartDTOListFromJson(json);


}
