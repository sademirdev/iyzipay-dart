// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_cards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCardsResponse _$RetrieveCardsResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveCardsResponse(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      cardUserKey: json['cardUserKey'] as String?,
      cardDetails: (json['cardDetails'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : CardDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$RetrieveCardsResponseToJson(
    RetrieveCardsResponse instance) {
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
  writeNotNull('cardUserKey', instance.cardUserKey);
  writeNotNull('cardDetails', instance.cardDetails);
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
