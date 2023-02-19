// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_tx_payout_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentTxPayoutDetail _$PaymentTxPayoutDetailFromJson(
        Map<String, dynamic> json) =>
    PaymentTxPayoutDetail(
      paidPrice: (json['paidPrice'] as num).toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num).toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num).toDouble(),
      blockageRateAmountMerchant:
          (json['blockageRateAmountMerchant'] as num).toDouble(),
      blockageRateAmountSubMerchant:
          (json['blockageRateAmountSubMerchant'] as num).toDouble(),
      subMerchantPayoutAmount:
          (json['subMerchantPayoutAmount'] as num).toDouble(),
      merchantPayoutAmount: (json['merchantPayoutAmount'] as num).toDouble(),
      iyziConversionRate: (json['iyziConversionRate'] as num).toDouble(),
      iyziConversionRateAmount:
          (json['iyziConversionRateAmount'] as num).toDouble(),
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$PaymentTxPayoutDetailToJson(
        PaymentTxPayoutDetail instance) =>
    <String, dynamic>{
      'paidPrice': instance.paidPrice,
      'iyziCommissionRateAmount': instance.iyziCommissionRateAmount,
      'iyziCommissionFee': instance.iyziCommissionFee,
      'blockageRateAmountMerchant': instance.blockageRateAmountMerchant,
      'blockageRateAmountSubMerchant': instance.blockageRateAmountSubMerchant,
      'subMerchantPayoutAmount': instance.subMerchantPayoutAmount,
      'merchantPayoutAmount': instance.merchantPayoutAmount,
      'iyziConversionRate': instance.iyziConversionRate,
      'iyziConversionRateAmount': instance.iyziConversionRateAmount,
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
