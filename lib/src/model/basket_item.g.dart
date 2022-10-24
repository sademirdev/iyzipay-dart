// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketItem _$BasketItemFromJson(Map<String, dynamic> json) => BasketItem(
      id: json['id'] as String,
      price: json['price'] as String,
      name: json['name'] as String,
      category1: json['category1'] as String,
      category2: json['category2'] as String?,
      itemType: $enumDecode(_$BasketItemTypeEnumMap, json['itemType']),
    );

Map<String, dynamic> _$BasketItemToJson(BasketItem instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'price': instance.price,
    'name': instance.name,
    'category1': instance.category1,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category2', instance.category2);
  val['itemType'] = _$BasketItemTypeEnumMap[instance.itemType]!;
  return val;
}

const _$BasketItemTypeEnumMap = {
  BasketItemType.physical: 'PHYSICAL',
  BasketItemType.virtual: 'VIRTUAL',
};
