// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iyziup_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IyziupPayment _$IyziupPaymentFromJson(Map<String, dynamic> json) =>
    IyziupPayment(
      price: (json['price'] as num).toDouble(),
      paidPrice: (json['paidPrice'] as num).toDouble(),
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      installment: json['installment'] as int,
      paymentId: json['paymentId'] as String,
      paymentStatus: json['paymentStatus'] as String,
      fraudStatus: json['fraudStatus'] as int,
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num).toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num).toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num).toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num).toDouble(),
      cardType: json['cardType'] as String,
      cardAssociation: json['cardAssociation'] as String,
      cardFamily: json['cardFamily'] as String,
      binNumber: json['binNumber'] as String,
      basketId: json['basketId'] as String,
      paymentItems: (json['itemTransactions'] as List<dynamic>)
          .map((e) => PaymentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      connectorName: json['connectorName'] as String,
      authCode: json['authCode'] as String,
      phase: json['phase'] as String,
      lastFourDigits: json['lastFourDigits'] as String,
      posOrderId: json['posOrderId'] as String,
    );

Map<String, dynamic> _$IyziupPaymentToJson(IyziupPayment instance) =>
    <String, dynamic>{
      'price': instance.price,
      'paidPrice': instance.paidPrice,
      'currency': _$CurrencyEnumMap[instance.currency]!,
      'installment': instance.installment,
      'paymentId': instance.paymentId,
      'paymentStatus': instance.paymentStatus,
      'fraudStatus': instance.fraudStatus,
      'merchantCommissionRate': instance.merchantCommissionRate,
      'merchantCommissionRateAmount': instance.merchantCommissionRateAmount,
      'iyziCommissionRateAmount': instance.iyziCommissionRateAmount,
      'iyziCommissionFee': instance.iyziCommissionFee,
      'cardType': instance.cardType,
      'cardAssociation': instance.cardAssociation,
      'cardFamily': instance.cardFamily,
      'binNumber': instance.binNumber,
      'basketId': instance.basketId,
      'itemTransactions': instance.paymentItems,
      'connectorName': instance.connectorName,
      'authCode': instance.authCode,
      'phase': instance.phase,
      'lastFourDigits': instance.lastFourDigits,
      'posOrderId': instance.posOrderId,
    };

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
