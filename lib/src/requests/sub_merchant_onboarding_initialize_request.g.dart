// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_merchant_onboarding_initialize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubMerchantOnboardingInitializeRequest
    _$SubMerchantOnboardingInitializeRequestFromJson(
            Map<String, dynamic> json) =>
        SubMerchantOnboardingInitializeRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          name: json['name'] as String,
          surname: json['surname'] as String,
          email: json['email'] as String,
          gsmNumber: json['gsmNumber'] as String,
          tckNo: json['tckNo'] as String,
          birthDate: json['birthDate'] as String,
          address: json['address'] as String,
          externalId: json['externalId'] as String,
        );

Map<String, dynamic> _$SubMerchantOnboardingInitializeRequestToJson(
    SubMerchantOnboardingInitializeRequest instance) {
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
  val['email'] = instance.email;
  val['gsmNumber'] = instance.gsmNumber;
  val['tckNo'] = instance.tckNo;
  val['birthDate'] = instance.birthDate;
  val['address'] = instance.address;
  val['externalId'] = instance.externalId;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
