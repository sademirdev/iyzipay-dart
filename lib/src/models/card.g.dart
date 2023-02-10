// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      externalId: json['externalId'] as String?,
      email: json['email'] as String?,
      cardUserKey: json['cardUserKey'] as String?,
      cardToken: json['cardToken'] as String?,
      cardAlias: json['cardAlias'] as String?,
      binNumber: json['binNumber'] as String?,
      lastFourDigits: json['lastFourDigits'] as String?,
      cardType: json['cardType'] as String?,
      cardAssociation: json['cardAssociation'] as String?,
      cardFamily: json['cardFamily'] as String?,
      cardBankCode: json['cardBankCode'] as int?,
      cardBankName: json['cardBankName'] as String?,
      cardHolderName: json['cardHolderName'] as String?,
      expireMonth: json['expireMonth'] as String?,
      expireYear: json['expireYear'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$CardToJson(Card instance) {
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
  writeNotNull('externalId', instance.externalId);
  writeNotNull('email', instance.email);
  writeNotNull('cardUserKey', instance.cardUserKey);
  writeNotNull('cardToken', instance.cardToken);
  writeNotNull('cardAlias', instance.cardAlias);
  writeNotNull('binNumber', instance.binNumber);
  writeNotNull('lastFourDigits', instance.lastFourDigits);
  writeNotNull('cardType', instance.cardType);
  writeNotNull('cardAssociation', instance.cardAssociation);
  writeNotNull('cardFamily', instance.cardFamily);
  writeNotNull('cardBankCode', instance.cardBankCode);
  writeNotNull('cardBankName', instance.cardBankName);
  writeNotNull('cardHolderName', instance.cardHolderName);
  writeNotNull('expireMonth', instance.expireMonth);
  writeNotNull('expireYear', instance.expireYear);
  writeNotNull('metadata', instance.metadata);
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
