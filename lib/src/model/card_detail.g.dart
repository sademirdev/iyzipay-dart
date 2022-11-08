// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardDetail _$CardDetailFromJson(Map<String, dynamic> json) => CardDetail(
      json['cardToken'] as String?,
      json['cardAlias'] as String?,
      json['binNumber'] as String?,
      json['lastFourDigits'] as String?,
      $enumDecodeNullable(_$CardTypeEnumMap, json['cardType']),
      $enumDecodeNullable(_$CardAssociationEnumMap, json['cardAssociation']),
      json['cardFamily'] as String?,
      json['cardBankCode'] as int?,
      json['cardBankName'] as String?,
    );

Map<String, dynamic> _$CardDetailToJson(CardDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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

const _$CardTypeEnumMap = {
  CardType.creditCard: 'CREDIT_CARD',
  CardType.debitCard: 'DEBIT_CARD',
  CardType.prePaidCard: 'PREPAID_CARD',
};

const _$CardAssociationEnumMap = {
  CardAssociation.masterCard: 'MASTER_CARD',
  CardAssociation.visa: 'VISA',
  CardAssociation.troy: 'TROY',
  CardAssociation.americanExpress: 'AMERICAN_EXPRESS',
};
