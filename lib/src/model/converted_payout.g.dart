// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converted_payout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConvertedPayout _$ConvertedPayoutFromJson(Map<String, dynamic> json) =>
    ConvertedPayout(
      paidPrice: (json['paidPrice'] as num?)?.toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num?)?.toDouble(),
      blockageRateAmountMerchant:
          (json['blockageRateAmountMerchant'] as num?)?.toDouble(),
      blockageRateAmountSubMerchant:
          (json['blockageRateAmountSubMerchant'] as num?)?.toDouble(),
      subMerchantPayoutAmount:
          (json['subMerchantPayoutAmount'] as num?)?.toDouble(),
      merchantPayoutAmount: (json['merchantPayoutAmount'] as num?)?.toDouble(),
      iyziConversionRate: (json['iyziConversionRate'] as num?)?.toDouble(),
      iyziConversionRateAmount:
          (json['iyziConversionRateAmount'] as num?)?.toDouble(),
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$ConvertedPayoutToJson(ConvertedPayout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('iyziCommissionRateAmount', instance.iyziCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull(
      'blockageRateAmountMerchant', instance.blockageRateAmountMerchant);
  writeNotNull(
      'blockageRateAmountSubMerchant', instance.blockageRateAmountSubMerchant);
  writeNotNull('subMerchantPayoutAmount', instance.subMerchantPayoutAmount);
  writeNotNull('merchantPayoutAmount', instance.merchantPayoutAmount);
  writeNotNull('iyziConversionRate', instance.iyziConversionRate);
  writeNotNull('iyziConversionRateAmount', instance.iyziConversionRateAmount);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  return val;
}

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
