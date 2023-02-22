import 'package:iyzipay/src/enums/order_item_type.dart';
import 'package:iyzipay/src/models/order_item.dart';

import 'wrapper.dart';

class OrderItemBuilder {
  OrderItemBuilder._({
    required this.id,
    required this.name,
    required this.category1,
    required this.category2,
    required this.itemType,
    required this.itemUrl,
    required this.itemDescription,
    required this.price,
  });

  const OrderItemBuilder.create()
      : id = 'BI101',
        name = 'Binocular',
        category1 = 'Collectibles',
        category2 = 'Accessories',
        itemType = OrderItemType.physical,
        itemUrl = 'www.merchant.biz/itemUrl',
        itemDescription = 'Item Description',
        price = null;

  final String id;
  final String name;
  final String category1;
  final String? category2;
  final OrderItemType itemType;
  final String itemUrl;
  final String itemDescription;
  final double? price;

  OrderItem build() {
    assert(
      price != null,
      '[price] should be initialized with copyWith() method.',
    );

    return OrderItem(
      id: id,
      price: price!,
      name: name,
      category1: category1,
      itemType: itemType,
      itemUrl: itemUrl,
      itemDescription: itemDescription,
    );
  }

  List<OrderItem> buildDefaultOrderItems() {
    return [
      const OrderItemBuilder.create()
          .copyWith(
            price: 0.3,
            itemDescription: 'item description',
            category2: const Wrapped.value(null),
          )
          .build(),
      const OrderItemBuilder.create()
          .copyWith(
            price: 0.5,
            itemDescription: 'item description',
          )
          .build(),
      const OrderItemBuilder.create()
          .copyWith(
            price: 0.2,
            itemDescription: 'item description',
          )
          .build(),
    ];
  }

  OrderItemBuilder copyWith({
    String? id,
    String? name,
    String? category1,
    Wrapped<String?>? category2,
    OrderItemType? itemType,
    String? itemUrl,
    String? itemDescription,
    double? price,
  }) {
    return OrderItemBuilder._(
      id: id ?? this.id,
      name: name ?? this.name,
      category1: category1 ?? this.category1,
      category2: category2 != null ? category2.value : this.category2,
      itemType: itemType ?? this.itemType,
      itemUrl: itemUrl ?? this.itemUrl,
      itemDescription: itemDescription ?? this.itemDescription,
      price: price ?? this.price,
    );
  }
}
