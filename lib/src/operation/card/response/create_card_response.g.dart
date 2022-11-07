// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCardResponse _$CreateCardResponseFromJson(Map<String, dynamic> json) =>
    CreateCardResponse(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
      binNumber: json['binNumber'] as String?,
      cardAlias: json['cardAlias'] as String?,
      cardAssociation: $enumDecodeNullable(
          _$CardAssociationEnumMap, json['cardAssociation']),
      cardBankCode: json['cardBankCode'] as int?,
      cardBankName: json['cardBankName'] as String?,
      cardFamily: json['cardFamily'] as String?,
      cardToken: json['cardToken'] as String?,
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['cardType']),
      cardUserKey: json['cardUserKey'] as String?,
      email: json['email'] as String?,
      externalId: json['externalId'] as String?,
      lastFourDigits: json['lastFourDigits'] as String?,
    );

Map<String, dynamic> _$CreateCardResponseToJson(CreateCardResponse instance) {
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
  writeNotNull('cardType', _$CardTypeEnumMap[instance.cardType]);
  writeNotNull(
      'cardAssociation', _$CardAssociationEnumMap[instance.cardAssociation]);
  writeNotNull('cardFamily', instance.cardFamily);
  writeNotNull('cardBankCode', instance.cardBankCode);
  writeNotNull('cardBankName', instance.cardBankName);
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

const _$CardAssociationEnumMap = {
  CardAssociation.masterCard: 'MASTER_CARD',
  CardAssociation.visa: 'VISA',
  CardAssociation.troy: 'TROY',
  CardAssociation.americanExpress: 'AMERICAN_EXPRESS',
};

const _$CardTypeEnumMap = {
  CardType.creditCard: 'CREDIT_CARD',
  CardType.debitCard: 'DEBIT_CARD',
  CardType.prePaidCard: 'PREPAID_CARD',
};
