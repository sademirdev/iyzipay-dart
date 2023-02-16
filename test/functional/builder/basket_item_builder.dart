import 'package:iyzipay/src/enums/basket_item_type.dart';
import 'package:iyzipay/src/models/basket_item.dart';

import 'wrapper.dart';

class BasketItemBuilder {
  const BasketItemBuilder._({
    required this.id,
    required this.name,
    required this.category1,
    required this.category2,
    required this.itemType,
    required this.subMerchantKey,
    required this.subMerchantPrice,
    required this.price,
  });

  const BasketItemBuilder.create()
      : id = 'BI101',
        name = 'Binocular',
        category1 = 'Collectibles',
        category2 = 'Accessories',
        itemType = BasketItemType.physical,
        subMerchantKey = null,
        subMerchantPrice = null,
        price = null;

  final String id;
  final String name;
  final String category1;
  final String? category2;
  final BasketItemType itemType;
  final String? subMerchantKey;
  final double? subMerchantPrice;
  final double? price;

  BasketItem build() {
    assert(
      price != null,
      '[price] should be initialized with copyWith() method.',
    );

    return BasketItem(
      id: id,
      price: price!,
      name: name,
      category1: category1,
      category2: category2,
      itemType: itemType,
      subMerchantKey: subMerchantKey,
      subMerchantPrice: subMerchantPrice,
    );
  }

  List<BasketItem> buildDefaultBasketItems() {
    return [
      const BasketItemBuilder.create()
          .copyWith(price: 0.3, category2: const Wrapped.value(null))
          .build(),
      const BasketItemBuilder.create().copyWith(price: 0.5).build(),
      const BasketItemBuilder.create().copyWith(price: 0.2).build(),
    ];
  }

  List<BasketItem> buildBasketItemsWithSubMerchantKey(String subMerchantKey) {
    return [
      const BasketItemBuilder.create()
          .copyWith(
            price: 0.3,
            category2: const Wrapped.value(null),
            subMerchantKey: subMerchantKey,
            subMerchantPrice: 0.27,
          )
          .build(),
      const BasketItemBuilder.create()
          .copyWith(
            price: 0.5,
            category2: const Wrapped.value(null),
            subMerchantKey: subMerchantKey,
            subMerchantPrice: 0.42,
          )
          .build(),
      const BasketItemBuilder.create()
          .copyWith(
            price: 0.2,
            category2: const Wrapped.value(null),
            subMerchantKey: subMerchantKey,
            subMerchantPrice: 0.18,
          )
          .build(),
    ];
  }

  BasketItemBuilder copyWith({
    String? id,
    String? name,
    String? category1,
    Wrapped<String?>? category2,
    BasketItemType? itemType,
    String? subMerchantKey,
    double? subMerchantPrice,
    double? price,
  }) {
    return BasketItemBuilder._(
      id: id ?? this.id,
      name: name ?? this.name,
      category1: category1 ?? this.category1,
      category2: category2 != null ? category2.value : this.category2,
      itemType: itemType ?? this.itemType,
      subMerchantKey: subMerchantKey ?? this.subMerchantKey,
      subMerchantPrice: subMerchantPrice ?? this.subMerchantPrice,
      price: price ?? this.price,
    );
  }
}
