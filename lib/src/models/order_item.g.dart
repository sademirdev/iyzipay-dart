// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      id: json['id'] as String,
      price: (json['price'] as num).toDouble(),
      name: json['name'] as String,
      category1: json['category1'] as String,
      category2: json['category2'] as String?,
      itemType: $enumDecode(_$OrderItemTypeEnumMap, json['itemType']),
      itemUrl: json['itemUrl'] as String,
      itemDescription: json['itemDescription'] as String,
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) {
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
  val['itemType'] = _$OrderItemTypeEnumMap[instance.itemType]!;
  val['itemUrl'] = instance.itemUrl;
  val['itemDescription'] = instance.itemDescription;
  return val;
}

const _$OrderItemTypeEnumMap = {
  OrderItemType.physical: 'PHYSICAL',
  OrderItemType.virtual: 'VIRTUAL',
};
