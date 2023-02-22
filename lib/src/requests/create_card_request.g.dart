// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCardRequest _$CreateCardRequestFromJson(Map<String, dynamic> json) =>
    CreateCardRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      externalId: json['externalId'] as String,
      email: json['email'] as String,
      cardUserKey: json['cardUserKey'] as String,
      card: CardInformation.fromJson(json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCardRequestToJson(CreateCardRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['externalId'] = instance.externalId;
  val['email'] = instance.email;
  val['cardUserKey'] = instance.cardUserKey;
  val['card'] = instance.card;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
