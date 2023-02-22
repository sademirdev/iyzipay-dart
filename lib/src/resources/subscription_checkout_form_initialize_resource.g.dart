// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_checkout_form_initialize_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionCheckoutFormInitializeResource
    _$SubscriptionCheckoutFormInitializeResourceFromJson(
            Map<String, dynamic> json) =>
        SubscriptionCheckoutFormInitializeResource(
          status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          systemTime: json['systemTime'] as int?,
          conversationId: json['conversationId'] as String?,
          token: json['token'] as String?,
          checkoutFormContent: json['checkoutFormContent'] as String?,
          tokenExpireTime: json['tokenExpireTime'] as int?,
          errorCode: json['errorCode'] as String?,
          errorMessage: json['errorMessage'] as String?,
          errorGroup: json['errorGroup'] as String?,
        );

Map<String, dynamic> _$SubscriptionCheckoutFormInitializeResourceToJson(
    SubscriptionCheckoutFormInitializeResource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$IyzipayStatusEnumMap[instance.status]);
  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('systemTime', instance.systemTime);
  writeNotNull('conversationId', instance.conversationId);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorMessage', instance.errorMessage);
  writeNotNull('errorGroup', instance.errorGroup);
  writeNotNull('token', instance.token);
  writeNotNull('checkoutFormContent', instance.checkoutFormContent);
  writeNotNull('tokenExpireTime', instance.tokenExpireTime);
  return val;
}

const _$IyzipayStatusEnumMap = {
  IyzipayStatus.success: 'success',
  IyzipayStatus.failure: 'failure',
};

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
