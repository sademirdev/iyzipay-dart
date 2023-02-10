// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_card_management_page_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCardManagementPageCardRequest
    _$RetrieveCardManagementPageCardRequestFromJson(
            Map<String, dynamic> json) =>
        RetrieveCardManagementPageCardRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          pageToken: json['pageToken'] as String,
        );

Map<String, dynamic> _$RetrieveCardManagementPageCardRequestToJson(
    RetrieveCardManagementPageCardRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['pageToken'] = instance.pageToken;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
