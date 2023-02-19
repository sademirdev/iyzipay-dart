// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) =>
    TransactionDetail(
      transactionType: json['transactionType'] as String,
      transactionDate: json['transactionDate'] as String,
      transactionId: json['transactionId'] as int,
      transactionStatus: json['transactionStatus'] as int?,
      afterSettlement: json['afterSettlement'] as int,
      paymentTxId: json['paymentTxId'] as int,
      paymentId: json['paymentId'] as int,
      conversationId: json['conversationId'] as String,
      paymentPhase: json['paymentPhase'] as String,
      price: (json['price'] as num).toDouble(),
      paidPrice: (json['paidPrice'] as num).toDouble(),
      transactionCurrency: json['transactionCurrency'] as String,
      installment: json['installment'] as int,
      threeDS: json['threeDS'] as int,
      iyzicoCommission: (json['iyzicoCommission'] as num).toDouble(),
      iyzicoFee: (json['iyzicoFee'] as num).toDouble(),
      parity: (json['parity'] as num).toDouble(),
      iyzicoConversionAmount:
          (json['iyzicoConversionAmount'] as num).toDouble(),
      settlementCurrency: json['settlementCurrency'] as String,
      merchantPayoutAmount: (json['merchantPayoutAmount'] as num).toDouble(),
      connectorType: json['connectorType'] as String,
      posOrderId: json['posOrderId'] as String,
      posName: json['posName'] as String,
      subMerchantKey: json['subMerchantKey'] as String,
      subMerchantPayoutAmount:
          (json['subMerchantPayoutAmount'] as num).toDouble(),
      authCode: json['authCode'] as String,
      hostReference: json['hostReference'] as String,
      basketId: json['basketId'] as String,
    );

Map<String, dynamic> _$TransactionDetailToJson(TransactionDetail instance) {
  final val = <String, dynamic>{
    'transactionType': instance.transactionType,
    'transactionDate': instance.transactionDate,
    'transactionId': instance.transactionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transactionStatus', instance.transactionStatus);
  val['afterSettlement'] = instance.afterSettlement;
  val['paymentTxId'] = instance.paymentTxId;
  val['paymentId'] = instance.paymentId;
  val['conversationId'] = instance.conversationId;
  val['paymentPhase'] = instance.paymentPhase;
  val['price'] = instance.price;
  val['paidPrice'] = instance.paidPrice;
  val['transactionCurrency'] = instance.transactionCurrency;
  val['installment'] = instance.installment;
  val['threeDS'] = instance.threeDS;
  val['iyzicoCommission'] = instance.iyzicoCommission;
  val['iyzicoFee'] = instance.iyzicoFee;
  val['parity'] = instance.parity;
  val['iyzicoConversionAmount'] = instance.iyzicoConversionAmount;
  val['settlementCurrency'] = instance.settlementCurrency;
  val['merchantPayoutAmount'] = instance.merchantPayoutAmount;
  val['connectorType'] = instance.connectorType;
  val['posOrderId'] = instance.posOrderId;
  val['posName'] = instance.posName;
  val['subMerchantKey'] = instance.subMerchantKey;
  val['subMerchantPayoutAmount'] = instance.subMerchantPayoutAmount;
  val['authCode'] = instance.authCode;
  val['hostReference'] = instance.hostReference;
  val['basketId'] = instance.basketId;
  return val;
}
