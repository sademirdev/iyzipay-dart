// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout_completed_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayoutCompletedTransaction _$PayoutCompletedTransactionFromJson(
        Map<String, dynamic> json) =>
    PayoutCompletedTransaction(
      paymentTransactionId: json['paymentTransactionId'] as String,
      payoutAmount: (json['payoutAmount'] as num).toDouble(),
      payoutType: json['payoutType'] as String,
      subMerchantKey: json['subMerchantKey'] as String,
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$PayoutCompletedTransactionToJson(
        PayoutCompletedTransaction instance) =>
    <String, dynamic>{
      'paymentTransactionId': instance.paymentTransactionId,
      'payoutAmount': instance.payoutAmount,
      'payoutType': instance.payoutType,
      'subMerchantKey': instance.subMerchantKey,
      'currency': _$CurrencyEnumMap[instance.currency]!,
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
