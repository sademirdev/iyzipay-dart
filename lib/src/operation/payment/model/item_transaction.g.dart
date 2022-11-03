// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemTransaction _$ItemTransactionFromJson(Map<String, dynamic> json) =>
    ItemTransaction(
      itemId: json['itemId'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String?,
      transactionStatus: json['transactionStatus'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      paidPrice: (json['paidPrice'] as num?)?.toDouble(),
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num?)?.toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num?)?.toDouble(),
      blockageRate: (json['blockageRate'] as num?)?.toDouble(),
      blockageRateAmountMerchant:
          (json['blockageRateAmountMerchant'] as num?)?.toDouble(),
      blockageRateAmountSubMerchant:
          (json['blockageRateAmountSubMerchant'] as num?)?.toDouble(),
      blockageResolvedDate: json['blockageResolvedDate'] as String?,
      subMerchantPrice: (json['subMerchantPrice'] as num?)?.toDouble(),
      subMerchantPayoutRate:
          (json['subMerchantPayoutRate'] as num?)?.toDouble(),
      subMerchantPayoutAmount:
          (json['subMerchantPayoutAmount'] as num?)?.toDouble(),
      merchantPayoutAmount: (json['merchantPayoutAmount'] as num?)?.toDouble(),
      convertedPayout: json['convertedPayout'] == null
          ? null
          : ConvertedPayout.fromJson(
              json['convertedPayout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemTransactionToJson(ItemTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('itemId', instance.itemId);
  writeNotNull('paymentTransactionId', instance.paymentTransactionId);
  writeNotNull('transactionStatus', instance.transactionStatus);
  writeNotNull('price', instance.price);
  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('merchantCommissionRate', instance.merchantCommissionRate);
  writeNotNull(
      'merchantCommissionRateAmount', instance.merchantCommissionRateAmount);
  writeNotNull('iyziCommissionRateAmount', instance.iyziCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull('blockageRate', instance.blockageRate);
  writeNotNull(
      'blockageRateAmountMerchant', instance.blockageRateAmountMerchant);
  writeNotNull(
      'blockageRateAmountSubMerchant', instance.blockageRateAmountSubMerchant);
  writeNotNull('blockageResolvedDate', instance.blockageResolvedDate);
  writeNotNull('subMerchantPrice', instance.subMerchantPrice);
  writeNotNull('subMerchantPayoutRate', instance.subMerchantPayoutRate);
  writeNotNull('subMerchantPayoutAmount', instance.subMerchantPayoutAmount);
  writeNotNull('merchantPayoutAmount', instance.merchantPayoutAmount);
  writeNotNull('convertedPayout', instance.convertedPayout);
  return val;
}
