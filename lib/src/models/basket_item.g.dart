// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketItem _$BasketItemFromJson(Map<String, dynamic> json) => BasketItem(
      id: json['id'] as String,
      price: (json['price'] as num).toDouble(),
      name: json['name'] as String,
      category1: json['category1'] as String,
      category2: json['category2'] as String,
      itemType: json['itemType'] as String,
      subMerchantKey: json['subMerchantKey'] as String,
      subMerchantPrice: (json['subMerchantPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$BasketItemToJson(BasketItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'name': instance.name,
      'category1': instance.category1,
      'category2': instance.category2,
      'itemType': instance.itemType,
      'subMerchantKey': instance.subMerchantKey,
      'subMerchantPrice': instance.subMerchantPrice,
    };
