// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteCardRequest _$DeleteCardRequestFromJson(Map<String, dynamic> json) =>
    DeleteCardRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      cardUserKey: json['cardUserKey'] as String,
      cardToken: json['cardToken'] as String,
    );

Map<String, dynamic> _$DeleteCardRequestToJson(DeleteCardRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['cardUserKey'] = instance.cardUserKey;
  val['cardToken'] = instance.cardToken;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
