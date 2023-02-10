// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_black_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardBlackList _$CardBlackListFromJson(Map<String, dynamic> json) =>
    CardBlackList(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      cardUserName: json['cardUserName'] as String?,
      cardToken: json['cardToken'] as String?,
      cardNumber: json['cardNumber'] as String?,
      blackListed: json['blackListed'] as bool?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$CardBlackListToJson(CardBlackList instance) {
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
  writeNotNull('cardUserName', instance.cardUserName);
  writeNotNull('cardToken', instance.cardToken);
  writeNotNull('cardNumber', instance.cardNumber);
  writeNotNull('blackListed', instance.blackListed);
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
