// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bkm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bkm _$BkmFromJson(Map<String, dynamic> json) => Bkm(
      price: (json['price'] as num?)?.toDouble(),
      paidPrice: (json['paidPrice'] as num?)?.toDouble(),
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      installment: json['installment'] as int?,
      paymentId: json['paymentId'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      fraudStatus: json['fraudStatus'] as int?,
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num?)?.toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num?)?.toDouble(),
      cardType: json['cardType'] as String?,
      cardAssociation: json['cardAssociation'] as String?,
      cardFamily: json['cardFamily'] as String?,
      cardToken: json['cardToken'] as String?,
      cardUserKey: json['cardUserKey'] as String?,
      binNumber: json['binNumber'] as String?,
      basketId: json['basketId'] as String?,
      paymentItems: (json['itemTransactions'] as List<dynamic>?)
          ?.map((e) => PaymentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      connectorName: json['connectorName'] as String?,
      authCode: json['authCode'] as String?,
      phase: json['phase'] as String?,
      lastFourDigits: json['lastFourDigits'] as String?,
      posOrderId: json['posOrderId'] as String?,
      hostReference: json['hostReference'] as String?,
      iban: json['iban'] as String?,
      legalCompanyTitle: json['legalCompanyTitle'] as String?,
      bankName: json['bankName'] as String?,
      referenceCode: json['referenceCode'] as String?,
      mdStatus: json['mdStatus'] as int?,
      token: json['token'] as String?,
      callbackUrl: json['callbackUrl'] as String?,
    );

Map<String, dynamic> _$BkmToJson(Bkm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  writeNotNull('installment', instance.installment);
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('paymentStatus', instance.paymentStatus);
  writeNotNull('fraudStatus', instance.fraudStatus);
  writeNotNull('merchantCommissionRate', instance.merchantCommissionRate);
  writeNotNull(
      'merchantCommissionRateAmount', instance.merchantCommissionRateAmount);
  writeNotNull('iyziCommissionRateAmount', instance.iyziCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull('cardType', instance.cardType);
  writeNotNull('cardAssociation', instance.cardAssociation);
  writeNotNull('cardFamily', instance.cardFamily);
  writeNotNull('cardToken', instance.cardToken);
  writeNotNull('cardUserKey', instance.cardUserKey);
  writeNotNull('binNumber', instance.binNumber);
  writeNotNull('basketId', instance.basketId);
  writeNotNull('itemTransactions', instance.paymentItems);
  writeNotNull('connectorName', instance.connectorName);
  writeNotNull('authCode', instance.authCode);
  writeNotNull('phase', instance.phase);
  writeNotNull('lastFourDigits', instance.lastFourDigits);
  writeNotNull('posOrderId', instance.posOrderId);
  writeNotNull('hostReference', instance.hostReference);
  writeNotNull('iban', instance.iban);
  writeNotNull('legalCompanyTitle', instance.legalCompanyTitle);
  writeNotNull('bankName', instance.bankName);
  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('mdStatus', instance.mdStatus);
  writeNotNull('token', instance.token);
  writeNotNull('callbackUrl', instance.callbackUrl);
  return val;
}

const _$CurrencyEnumMap = {
  Currency.TRY: 'TRY',
  Currency.EUR: 'EUR',
  Currency.USD: 'USD',
  Currency.IRR: 'IRR',
  Currency.GBP: 'GBP',
  Currency.NOK: 'NOK',
  Currency.RUB: 'RUB',
  Currency.CHF: 'CHF',
};
