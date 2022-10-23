// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response<T> _$ResponseFromJson<T>(Map<String, dynamic> json) => Response<T>(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$ResponseToJson<T>(Response<T> instance) =>
    <String, dynamic>{
      'status': _$IyzipayStatusEnumMap[instance.status],
      'locale': _$IyzipayLocaleEnumMap[instance.locale],
      'systemTime': instance.systemTime,
      'conversationId': instance.conversationId,
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'errorGroup': instance.errorGroup,
    };

const _$IyzipayStatusEnumMap = {
  IyzipayStatus.success: 'success',
  IyzipayStatus.failure: 'failure',
};

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
