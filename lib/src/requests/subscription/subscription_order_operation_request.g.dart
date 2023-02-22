// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_order_operation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionOrderOperationRequest _$SubscriptionOrderOperationRequestFromJson(
        Map<String, dynamic> json) =>
    SubscriptionOrderOperationRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      referenceCode: json['referenceCode'] as String,
    );

Map<String, dynamic> _$SubscriptionOrderOperationRequestToJson(
    SubscriptionOrderOperationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['referenceCode'] = instance.referenceCode;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
