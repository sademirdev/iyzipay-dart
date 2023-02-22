// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_card_black_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCardBlacklistRequest _$UpdateCardBlacklistRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateCardBlacklistRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      cardToken: json['cardToken'] as String,
      cardUserKey: json['cardUserKey'] as String,
    );

Map<String, dynamic> _$UpdateCardBlacklistRequestToJson(
    UpdateCardBlacklistRequest instance) {
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
