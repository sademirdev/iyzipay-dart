// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_bin_number_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveBinNumberRequest _$RetrieveBinNumberRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveBinNumberRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      binNumber: json['binNumber'] as String,
    );

Map<String, dynamic> _$RetrieveBinNumberRequestToJson(
    RetrieveBinNumberRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['binNumber'] = instance.binNumber;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
