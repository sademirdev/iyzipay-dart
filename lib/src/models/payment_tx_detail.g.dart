// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_tx_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentTxDetail _$PaymentTxDetailFromJson(Map<String, dynamic> json) =>
    PaymentTxDetail(
      itemId: json['itemId'] as String,
      paymentTransactionId: json['paymentTransactionId'] as int,
      transactionStatus: json['transactionStatus'] as int,
      price: (json['price'] as num).toDouble(),
      paidPrice: (json['paidPrice'] as num).toDouble(),
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num).toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num).toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num).toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num).toDouble(),
      blockageRate: (json['blockageRate'] as num).toDouble(),
      blockageRateAmountMerchant:
          (json['blockageRateAmountMerchant'] as num).toDouble(),
      blockageRateAmountSubMerchant:
          (json['blockageRateAmountSubMerchant'] as num).toDouble(),
      blockageResolvedDate:
          DateTime.parse(json['blockageResolvedDate'] as String),
      subMerchantKey: json['subMerchantKey'] as String,
      subMerchantPrice: (json['subMerchantPrice'] as num).toDouble(),
      subMerchantPayoutRate: (json['subMerchantPayoutRate'] as num).toDouble(),
      subMerchantPayoutAmount:
          (json['subMerchantPayoutAmount'] as num).toDouble(),
      merchantPayoutAmount: (json['merchantPayoutAmount'] as num).toDouble(),
      convertedPayout: PaymentTxPayoutDetail.fromJson(
          json['convertedPayout'] as Map<String, dynamic>),
      refunds: (json['refunds'] as List<dynamic>)
          .map((e) => RefundTxDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentTxDetailToJson(PaymentTxDetail instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'paymentTransactionId': instance.paymentTransactionId,
      'transactionStatus': instance.transactionStatus,
      'price': instance.price,
      'paidPrice': instance.paidPrice,
      'merchantCommissionRate': instance.merchantCommissionRate,
      'merchantCommissionRateAmount': instance.merchantCommissionRateAmount,
      'iyziCommissionRateAmount': instance.iyziCommissionRateAmount,
      'iyziCommissionFee': instance.iyziCommissionFee,
      'blockageRate': instance.blockageRate,
      'blockageRateAmountMerchant': instance.blockageRateAmountMerchant,
      'blockageRateAmountSubMerchant': instance.blockageRateAmountSubMerchant,
      'blockageResolvedDate': instance.blockageResolvedDate.toIso8601String(),
      'subMerchantKey': instance.subMerchantKey,
      'subMerchantPrice': instance.subMerchantPrice,
      'subMerchantPayoutRate': instance.subMerchantPayoutRate,
      'subMerchantPayoutAmount': instance.subMerchantPayoutAmount,
      'merchantPayoutAmount': instance.merchantPayoutAmount,
      'convertedPayout': instance.convertedPayout,
      'refunds': instance.refunds,
    };
