// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize_card_update_with_subscription_checkout_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeCardUpdateWithSubscriptionCheckoutFormRequest
    _$InitializeCardUpdateWithSubscriptionCheckoutFormRequestFromJson(
            Map<String, dynamic> json) =>
        InitializeCardUpdateWithSubscriptionCheckoutFormRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          subscriptionReferenceCode:
              json['subscriptionReferenceCode'] as String,
          callbackUrl: json['callbackUrl'] as String,
        );

Map<String, dynamic>
    _$InitializeCardUpdateWithSubscriptionCheckoutFormRequestToJson(
        InitializeCardUpdateWithSubscriptionCheckoutFormRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['subscriptionReferenceCode'] = instance.subscriptionReferenceCode;
  val['callbackUrl'] = instance.callbackUrl;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
