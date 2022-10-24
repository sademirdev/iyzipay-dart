import 'package:iyzipay/src/enum/basket_item_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basket_item.g.dart';

///
@JsonSerializable(includeIfNull: false)
class BasketItem {
  ///
  const BasketItem({
    required this.id,
    required this.price,
    required this.name,
    required this.category1,
    this.category2,
    required this.itemType,
  });

  /// The id of the product in the basket on the merchant side.
  ///
  ///  Note: A maximum of 500 basketItems can be added to a payment request.
  final String id;

  /// The amount of the product in the basket on the merchant side.
  ///
  /// it cannot be 0 and less than 0; the sum of the amounts
  /// must be equal to the basket amount (price).
  final String price;

  /// The name of the product in the basket on the merchant side.
  final String name;

  /// Category 1 of the product in the basket on the merchant side.
  final String category1;

  /// Category 2 of the product in the basket on the merchant side.
  final String? category2;

  /// The type of the product in the basket on the merchant side.
  ///
  /// Valid enum values are `PHYSICAL` and `VIRTUAL`.
  final BasketItemType itemType;
}
