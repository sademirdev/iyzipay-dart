// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize_subscription_card_update_checkout_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeSubscriptionCardUpdateCheckoutFormRequest
    _$InitializeSubscriptionCardUpdateCheckoutFormRequestFromJson(
            Map<String, dynamic> json) =>
        InitializeSubscriptionCardUpdateCheckoutFormRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          customerReferenceCode: json['customerReferenceCode'] as String,
          callbackUrl: json['callbackUrl'] as String,
        );

Map<String, dynamic>
    _$InitializeSubscriptionCardUpdateCheckoutFormRequestToJson(
        InitializeSubscriptionCardUpdateCheckoutFormRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['customerReferenceCode'] = instance.customerReferenceCode;
  val['callbackUrl'] = instance.callbackUrl;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
