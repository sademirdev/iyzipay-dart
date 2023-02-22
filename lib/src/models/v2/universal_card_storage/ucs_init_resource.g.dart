// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ucs_init_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UcsInitResource _$UcsInitResourceFromJson(Map<String, dynamic> json) =>
    UcsInitResource(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      ucsToken: json['ucsToken'] as String?,
      gsmNumber: json['gsmNumber'] as String?,
      maskedGsmNumber: json['maskedGsmNumber'] as String?,
      merchantName: json['merchantName'] as String?,
      script: json['script'] as String?,
      scriptType: json['scriptType'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$UcsInitResourceToJson(UcsInitResource instance) {
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
  writeNotNull('ucsToken', instance.ucsToken);
  writeNotNull('gsmNumber', instance.gsmNumber);
  writeNotNull('maskedGsmNumber', instance.maskedGsmNumber);
  writeNotNull('merchantName', instance.merchantName);
  writeNotNull('script', instance.script);
  writeNotNull('scriptType', instance.scriptType);
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
