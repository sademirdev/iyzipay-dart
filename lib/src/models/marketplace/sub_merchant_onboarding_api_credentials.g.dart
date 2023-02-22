// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_merchant_onboarding_api_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubMerchantOnboardingApiCredentials
    _$SubMerchantOnboardingApiCredentialsFromJson(Map<String, dynamic> json) =>
        SubMerchantOnboardingApiCredentials(
          salt: json['salt'] as String,
          secretKey: json['secretKey'] as String,
        );

Map<String, dynamic> _$SubMerchantOnboardingApiCredentialsToJson(
        SubMerchantOnboardingApiCredentials instance) =>
    <String, dynamic>{
      'salt': instance.salt,
      'secretKey': instance.secretKey,
    };
