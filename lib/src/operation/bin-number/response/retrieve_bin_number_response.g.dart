// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_bin_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveBinNumberResponse _$RetrieveBinNumberResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveBinNumberResponse(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      binNumber: json['binNumber'] as String?,
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['cardType']),
      cardAssociation: $enumDecodeNullable(
          _$CardAssociationEnumMap, json['cardAssociation']),
      cardFamily: json['cardFamily'] as String?,
      bankName: json['bankName'] as String?,
      bankCode: json['bankCode'] as int?,
      commercial: json['commercial'] as int?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

const _$IyzipayStatusEnumMap = {
  IyzipayStatus.success: 'success',
  IyzipayStatus.failure: 'failure',
};

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

const _$CardTypeEnumMap = {
  CardType.creditCard: 'CREDIT_CARD',
  CardType.debitCard: 'DEBIT_CARD',
};

const _$CardAssociationEnumMap = {
  CardAssociation.masterCard: 'MASTER_CARD',
  CardAssociation.visa: 'VISA',
  CardAssociation.troy: 'TROY',
  CardAssociation.americanExpress: 'AMERICAN_EXPRESS',
};
