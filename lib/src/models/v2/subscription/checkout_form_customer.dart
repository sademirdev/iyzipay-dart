import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'checkout_form_customer.g.dart';

@JsonSerializable(includeIfNull: false)
class CheckoutFormCustomer with JsonConvertible<CheckoutFormCustomer> {
  CheckoutFormCustomer({
    required this.name,
    required this.surname,
    required this.email,
    required this.gsmNumber,
    required this.identityNumber,
    required this.billingAddress,
    required this.shippingAddress,
  });

  final String name;
  final String surname;
  final String email;
  final String gsmNumber;
  final String identityNumber;
  final Address billingAddress;
  final Address shippingAddress;

  @override
  CheckoutFormCustomer fromJson(JsonMap json) =>
      _$CheckoutFormCustomerFromJson(json);

  @override
  JsonMap toJson() => _$CheckoutFormCustomerToJson(this);
}
