// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartDTOList _$$_CartDTOListFromJson(Map<String, dynamic> json) =>
    _$_CartDTOList(
      cartList: (json['cartList'] as List<dynamic>)
          .map((e) => CartDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CartDTOListToJson(_$_CartDTOList instance) =>
    <String, dynamic>{
      'cartList': instance.cartList,
    };
