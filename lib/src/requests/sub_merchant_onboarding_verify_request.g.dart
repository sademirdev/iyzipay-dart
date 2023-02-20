// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_merchant_onboarding_verify_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubMerchantOnboardingVerifyRequest _$SubMerchantOnboardingVerifyRequestFromJson(
        Map<String, dynamic> json) =>
    SubMerchantOnboardingVerifyRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      txId: json['txId'] as String,
      smsVerificationCode: json['smsVerificationCode'] as String,
    );

Map<String, dynamic> _$SubMerchantOnboardingVerifyRequestToJson(
    SubMerchantOnboardingVerifyRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['txId'] = instance.txId;
  val['smsVerificationCode'] = instance.smsVerificationCode;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
