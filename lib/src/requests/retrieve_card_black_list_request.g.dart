// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_card_black_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCardBlacklistRequest _$RetrieveCardBlacklistRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveCardBlacklistRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      cardNumber: json['cardNumber'] as String,
    );

Map<String, dynamic> _$RetrieveCardBlacklistRequestToJson(
    RetrieveCardBlacklistRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['cardNumber'] = instance.cardNumber;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
