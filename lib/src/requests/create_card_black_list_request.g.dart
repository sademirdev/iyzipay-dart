// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card_black_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCardBlacklistRequest _$CreateCardBlacklistRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCardBlacklistRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      cardToken: json['cardToken'] as String,
      cardUserKey: json['cardUserKey'] as String,
    );

Map<String, dynamic> _$CreateCardBlacklistRequestToJson(
    CreateCardBlacklistRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['cardToken'] = instance.cardToken;
  val['cardUserKey'] = instance.cardUserKey;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
