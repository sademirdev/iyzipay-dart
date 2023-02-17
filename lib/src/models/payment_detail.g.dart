// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentDetail _$PaymentDetailFromJson(Map<String, dynamic> json) =>
    PaymentDetail(
      paymentId: json['paymentId'] as int,
      paymentStatus: json['paymentStatus'] as int,
      paymentRefundStatus: json['paymentRefundStatus'] as String,
      price: (json['price'] as num).toDouble(),
      paidPrice: (json['paidPrice'] as num).toDouble(),
      installment: json['installment'] as int?,
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num).toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num).toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num).toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num).toDouble(),
      paymentConversationId: json['paymentConversationId'] as String,
      fraudStatus: json['fraudStatus'] as int?,
      cardType: json['cardType'] as String,
      cardAssociation: json['cardAssociation'] as String,
      cardFamily: json['cardFamily'] as String,
      cardToken: json['cardToken'] as String,
      cardUserKey: json['cardUserKey'] as String,
      binNumber: json['binNumber'] as String,
      lastFourDigits: json['lastFourDigits'] as String,
      basketId: json['basketId'] as String,
      currency: json['currency'] as String,
      connectorName: json['connectorName'] as String,
      authCode: json['authCode'] as String,
      threeDS: json['threeDS'] as bool,
      phase: json['phase'] as String,
      acquirerBankName: json['acquirerBankName'] as String,
      mdStatus: json['mdStatus'] as int?,
      hostReference: json['hostReference'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
      updatedDate: DateTime.parse(json['updatedDate'] as String),
      orderId: json['orderId'] as String,
      cancels: (json['cancels'] as List<dynamic>)
          .map((e) => RefundDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemTransactions: (json['itemTransactions'] as List<dynamic>)
          .map((e) => PaymentTxDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaymentDetailToJson(PaymentDetail instance) {
  final val = <String, dynamic>{
    'paymentId': instance.paymentId,
    'paymentStatus': instance.paymentStatus,
    'paymentRefundStatus': instance.paymentRefundStatus,
    'price': instance.price,
    'paidPrice': instance.paidPrice,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('installment', instance.installment);
  val['merchantCommissionRate'] = instance.merchantCommissionRate;
  val['merchantCommissionRateAmount'] = instance.merchantCommissionRateAmount;
  val['iyziCommissionRateAmount'] = instance.iyziCommissionRateAmount;
  val['iyziCommissionFee'] = instance.iyziCommissionFee;
  val['paymentConversationId'] = instance.paymentConversationId;
  writeNotNull('fraudStatus', instance.fraudStatus);
  val['cardType'] = instance.cardType;
  val['cardAssociation'] = instance.cardAssociation;
  val['cardFamily'] = instance.cardFamily;
  val['cardToken'] = instance.cardToken;
  val['cardUserKey'] = instance.cardUserKey;
  val['binNumber'] = instance.binNumber;
  val['lastFourDigits'] = instance.lastFourDigits;
  val['basketId'] = instance.basketId;
  val['currency'] = instance.currency;
  val['connectorName'] = instance.connectorName;
  val['authCode'] = instance.authCode;
  val['threeDS'] = instance.threeDS;
  val['phase'] = instance.phase;
  val['acquirerBankName'] = instance.acquirerBankName;
  writeNotNull('mdStatus', instance.mdStatus);
  val['hostReference'] = instance.hostReference;
  val['createdDate'] = instance.createdDate.toIso8601String();
  val['updatedDate'] = instance.updatedDate.toIso8601String();
  val['orderId'] = instance.orderId;
  val['cancels'] = instance.cancels;
  val['itemTransactions'] = instance.itemTransactions;
  return val;
}
