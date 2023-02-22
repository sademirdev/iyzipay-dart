// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_bkm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicBkm _$BasicBkmFromJson(Map<String, dynamic> json) => BasicBkm(
      price: (json['price'] as num?)?.toDouble(),
      paidPrice: (json['paidPrice'] as num?)?.toDouble(),
      installment: json['installment'] as int?,
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      paymentId: json['paymentId'] as String?,
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num?)?.toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num?)?.toDouble(),
      cardType: json['cardType'] as String?,
      cardAssociation: json['cardAssociation'] as String?,
      cardFamily: json['cardFamily'] as String?,
      cardToken: json['cardToken'] as String?,
      cardUserKey: json['cardUserKey'] as String?,
      binNumber: json['binNumber'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String?,
      authCode: json['authCode'] as String?,
      connectorName: json['connectorName'] as String?,
      phase: json['phase'] as String?,
      token: json['token'] as String?,
      callbackUrl: json['callbackUrl'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
    );

Map<String, dynamic> _$BasicBkmToJson(BasicBkm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('installment', instance.installment);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('merchantCommissionRate', instance.merchantCommissionRate);
  writeNotNull(
      'merchantCommissionRateAmount', instance.merchantCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull('cardType', instance.cardType);
  writeNotNull('cardAssociation', instance.cardAssociation);
  writeNotNull('cardFamily', instance.cardFamily);
  writeNotNull('cardToken', instance.cardToken);
  writeNotNull('cardUserKey', instance.cardUserKey);
  writeNotNull('binNumber', instance.binNumber);
  writeNotNull('paymentTransactionId', instance.paymentTransactionId);
  writeNotNull('authCode', instance.authCode);
  writeNotNull('connectorName', instance.connectorName);
  writeNotNull('phase', instance.phase);
  writeNotNull('token', instance.token);
  writeNotNull('callbackUrl', instance.callbackUrl);
  writeNotNull('paymentStatus', instance.paymentStatus);
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
