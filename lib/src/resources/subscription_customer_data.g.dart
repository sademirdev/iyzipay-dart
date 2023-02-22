// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_customer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionCustomerData _$SubscriptionCustomerDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionCustomerData(
      json['referenceCode'] as String?,
      json['createdDate'] as String?,
      json['status'] as String?,
      json['name'] as String?,
      json['surname'] as String?,
      json['identityNumber'] as String?,
      json['email'] as String?,
      json['gsmNumber'] as String?,
      json['billingAddress'] == null
          ? null
          : Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      json['shippingAddress'] == null
          ? null
          : Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubscriptionCustomerDataToJson(
    SubscriptionCustomerData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('createdDate', instance.createdDate);
  writeNotNull('status', instance.status);
  writeNotNull('name', instance.name);
  writeNotNull('surname', instance.surname);
  writeNotNull('identityNumber', instance.identityNumber);
  writeNotNull('email', instance.email);
  writeNotNull('gsmNumber', instance.gsmNumber);
  writeNotNull('billingAddress', instance.billingAddress);
  writeNotNull('shippingAddress', instance.shippingAddress);
  return val;
}
