import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_item.g.dart';

@JsonSerializable(includeIfNull: false)
class OrderItem with JsonConvertible<OrderItem> {
  const OrderItem({
    required this.id,
    required this.price,
    required this.name,
    required this.category1,
    this.category2,
    required this.itemType,
    required this.itemUrl,
    required this.itemDescription,
  });

  final String id;
  final double price;
  final String name;
  final String category1;
  final String? category2;
  final String itemType;
  final String itemUrl;
  final String itemDescription;

  @override
  OrderItem fromJson(JsonMap json) => _$OrderItemFromJson(json);

  @override
  JsonMap toJson() => _$OrderItemToJson(this);
}
