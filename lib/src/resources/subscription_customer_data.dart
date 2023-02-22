import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_customer_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionCustomerData with JsonConvertible<SubscriptionCustomerData> {
  SubscriptionCustomerData(
    this.referenceCode,
    this.createdDate,
    this.status,
    this.name,
    this.surname,
    this.identityNumber,
    this.email,
    this.gsmNumber,
    this.billingAddress,
    this.shippingAddress,
  );

  final String? referenceCode;
  final String? createdDate;
  final String? status;
  final String? name;
  final String? surname;
  final String? identityNumber;
  final String? email;
  final String? gsmNumber;
  final Address? billingAddress;
  final Address? shippingAddress;

  @override
  SubscriptionCustomerData fromJson(JsonMap json) =>
      _$SubscriptionCustomerDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionCustomerDataToJson(this);
}
