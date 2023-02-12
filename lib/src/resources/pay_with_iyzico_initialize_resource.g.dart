// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_with_iyzico_initialize_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayWithIyzicoInitializeResource _$PayWithIyzicoInitializeResourceFromJson(
        Map<String, dynamic> json) =>
    PayWithIyzicoInitializeResource(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      token: json['token'] as String?,
      checkoutFormContent: json['checkoutFormContent'] as String?,
      tokenExpireTime: json['tokenExpireTime'] as int?,
      payWithIyzicoPageUrl: json['payWithIyzicoPageUrl'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$PayWithIyzicoInitializeResourceToJson(
    PayWithIyzicoInitializeResource instance) {
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
  writeNotNull('payWithIyzicoPageUrl', instance.payWithIyzicoPageUrl);
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
