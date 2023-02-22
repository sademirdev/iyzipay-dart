// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_merchant_onboarding_initialize_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubMerchantOnboardingInitializeResource
    _$SubMerchantOnboardingInitializeResourceFromJson(
            Map<String, dynamic> json) =>
        SubMerchantOnboardingInitializeResource(
          status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          systemTime: json['systemTime'] as int?,
          conversationId: json['conversationId'] as String?,
          txId: json['txId'] as String?,
          errorCode: json['errorCode'] as String?,
          errorMessage: json['errorMessage'] as String?,
          errorGroup: json['errorGroup'] as String?,
        );

Map<String, dynamic> _$SubMerchantOnboardingInitializeResourceToJson(
    SubMerchantOnboardingInitializeResource instance) {
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
  writeNotNull('txId', instance.txId);
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
