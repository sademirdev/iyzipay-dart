import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

///
@JsonSerializable(includeIfNull: false)
class Address {
  ///
  const Address({
    required this.address,
    this.zipCode,
    required this.contactName,
    required this.city,
    required this.country,
  });

  /// Converts [Map] to [Address]
  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  /// For ShippingAddress:
  ///
  /// - The delivery address on the merchant side.
  ///
  /// - It is mandatory if at least 1 of the products in the basket
  /// is a physical product (itemType=`PHYSICAL`).
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
  /// - It is mandatory if at least 1 of the products in the basket is
  /// a physical product (itemType=`PHYSICAL`).
  ///
  /// For BillingAddress:
  ///
  /// - Billing address on the merchant side, name and surname information.
  final String contactName;

  /// For ShippingAddress:
  ///
  /// - Delivery address city information on the merchant side.
  ///
  /// - It is mandatory if at least 1 of the products in the basket is
  /// a physical product (itemType=`PHYSICAL`).
  ///
  /// For BillingAddress:
  ///
  /// - Billing address city information on the member merchant side.
  final String city;

  /// For ShippingAddress:
  ///
  /// - Country information of the delivery address on the merchant side.
  ///
  /// - It is mandatory if at least 1 of the products in the basket is
  /// a physical product (itemType=`PHYSICAL`).
  ///
  /// For BillingAddress:
  ///
  /// - Billing address country information on the merchant side.
  final String country;
}
