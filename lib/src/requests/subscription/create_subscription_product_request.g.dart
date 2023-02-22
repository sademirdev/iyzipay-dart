// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_subscription_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSubscriptionProductRequest _$CreateSubscriptionProductRequestFromJson(
        Map<String, dynamic> json) =>
    CreateSubscriptionProductRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$CreateSubscriptionProductRequestToJson(
    CreateSubscriptionProductRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['name'] = instance.name;
  val['description'] = instance.description;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
