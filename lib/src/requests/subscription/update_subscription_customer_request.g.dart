// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_subscription_customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSubscriptionCustomerRequest _$UpdateSubscriptionCustomerRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateSubscriptionCustomerRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      subscriptionCustomerReferenceCode:
          json['subscriptionCustomerReferenceCode'] as String,
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

Map<String, dynamic> _$UpdateSubscriptionCustomerRequestToJson(
    UpdateSubscriptionCustomerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['subscriptionCustomerReferenceCode'] =
      instance.subscriptionCustomerReferenceCode;
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
