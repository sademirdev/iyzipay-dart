// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_bkm_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveBkmRequest _$RetrieveBkmRequestFromJson(Map<String, dynamic> json) =>
    RetrieveBkmRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$RetrieveBkmRequestToJson(RetrieveBkmRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['token'] = instance.token;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
