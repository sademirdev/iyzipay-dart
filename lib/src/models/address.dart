import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable(includeIfNull: false)
class Address {
  const Address({
    required this.address,
    this.zipCode,
    required this.contactName,
    required this.city,
    required this.country,
  });

  /// Converts [Map] to [Address]
  factory Address.fromJson(JsonMap json) => _$AddressFromJson(json);

  /// For ShippingAddress:
  ///
  /// - The delivery address on the merchant side.
  ///
  /// {@template mandatory_if_basket_physical_product}
  /// - It is mandatory if at least 1 of the products in the basket
  /// is a physical product (itemType=PHYSICAL).
  /// {@endtemplate}
  ///
  /// For BillingAddress:
  ///
  /// - Billing address on the merchant side.
  final String address;

  /// For ShippingAddress:
  ///
  /// - The postal code of the delivery address on the merchant side.
  ///
  /// For BillingAddress:
  ///
  /// - Billing address postal code on the merchant side.
  final String? zipCode;

  /// For ShippingAddress:
  ///
  /// - Delivery address on the merchant side, name and surname information.
  ///
  /// {@macro mandatory_if_basket_physical_product}
  ///
  /// For BillingAddress:
  ///
  /// - Billing address on the merchant side, name and surname information.
  final String contactName;

  /// For ShippingAddress:
  ///
  /// - Delivery address city information on the merchant side.
  ///
  /// {@macro mandatory_if_basket_physical_product}
  ///
  /// For BillingAddress:
  ///
  /// - Billing address city information on the member merchant side.
  final String city;

  /// For ShippingAddress:
  ///
  /// - Country information of the delivery address on the merchant side.
  ///
  /// {@macro mandatory_if_basket_physical_product}
  ///
  /// For BillingAddress:
  ///
  /// - Billing address country information on the merchant side.
  final String country;

  /// Converts [Map] to [Address]
  Address fromJson(JsonMap json) => _$AddressFromJson(json);

  /// Converts [Address] to [Map]
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
