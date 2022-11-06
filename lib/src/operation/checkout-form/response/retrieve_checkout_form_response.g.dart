// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_checkout_form_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCheckoutFormResponse _$RetrieveCheckoutFormResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveCheckoutFormResponse(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      paidPrice: (json['paidPrice'] as num?)?.toDouble(),
      installment: json['installment'] as int?,
      paymentId: json['paymentId'] as String?,
      fraudStatus: json['fraudStatus'] as int?,
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num?)?.toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num?)?.toDouble(),
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['cardType']),
      cardAssociation: $enumDecodeNullable(
          _$CardAssociationEnumMap, json['cardAssociation']),
      cardFamily: json['cardFamily'] as String?,
      binNumber: json['binNumber'] as String?,
      lastFourDigits: json['lastFourDigits'] as String?,
      basketId: json['basketId'] as String?,
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      itemTransactions: (json['itemTransactions'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ItemTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      token: json['token'] as String?,
      callbackUrl: json['callbackUrl'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      mdStatus: json['mdStatus'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$RetrieveCheckoutFormResponseToJson(
    RetrieveCheckoutFormResponse instance) {
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
  writeNotNull('price', instance.price);
  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('installment', instance.installment);
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('fraudStatus', instance.fraudStatus);
  writeNotNull('merchantCommissionRate', instance.merchantCommissionRate);
  writeNotNull(
      'merchantCommissionRateAmount', instance.merchantCommissionRateAmount);
  writeNotNull('iyziCommissionRateAmount', instance.iyziCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull('cardType', _$CardTypeEnumMap[instance.cardType]);
  writeNotNull(
      'cardAssociation', _$CardAssociationEnumMap[instance.cardAssociation]);
  writeNotNull('cardFamily', instance.cardFamily);
  writeNotNull('binNumber', instance.binNumber);
  writeNotNull('lastFourDigits', instance.lastFourDigits);
  writeNotNull('basketId', instance.basketId);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  writeNotNull('itemTransactions', instance.itemTransactions);
  writeNotNull('token', instance.token);
  writeNotNull('callbackUrl', instance.callbackUrl);
  writeNotNull('paymentStatus', instance.paymentStatus);
  writeNotNull('mdStatus', instance.mdStatus);
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

const _$CurrencyEnumMap = {
  Currency.tl: 'TRY',
  Currency.eur: 'EUR',
  Currency.usd: 'USD',
  Currency.irr: 'IRR',
  Currency.gbp: 'GBP',
  Currency.nok: 'NOK',
  Currency.rub: 'RUB',
  Currency.chf: 'CHF',
};
