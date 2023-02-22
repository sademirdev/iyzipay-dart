// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subscription_customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSubscriptionCustomerRequest _$CreateSubscriptionCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    CreateSubscriptionCustomerRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      name: json['name'] as String,
      surname: json['surname'] as String,
      identityNumber: json['identityNumber'] as String,
      email: json['email'] as String,
      gsmNumber: json['gsmNumber'] as String,
      billingAddress:
          Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      shippingAddress:
          Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateSubscriptionCustomerRequestToJson(
    CreateSubscriptionCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['name'] = instance.name;
  val['surname'] = instance.surname;
  val['identityNumber'] = instance.identityNumber;
  val['email'] = instance.email;
  val['gsmNumber'] = instance.gsmNumber;
  val['billingAddress'] = instance.billingAddress;
  val['shippingAddress'] = instance.shippingAddress;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
