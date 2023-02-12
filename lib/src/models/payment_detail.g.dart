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
      installment: json['installment'] as int,
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num).toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num).toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num).toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num).toDouble(),
      paymentConversationId: json['paymentConversationId'] as String,
      fraudStatus: json['fraudStatus'] as int,
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
      mdStatus: json['mdStatus'] as int,
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

Map<String, dynamic> _$PaymentDetailToJson(PaymentDetail instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'paymentStatus': instance.paymentStatus,
      'paymentRefundStatus': instance.paymentRefundStatus,
      'price': instance.price,
      'paidPrice': instance.paidPrice,
      'installment': instance.installment,
      'merchantCommissionRate': instance.merchantCommissionRate,
      'merchantCommissionRateAmount': instance.merchantCommissionRateAmount,
      'iyziCommissionRateAmount': instance.iyziCommissionRateAmount,
      'iyziCommissionFee': instance.iyziCommissionFee,
      'paymentConversationId': instance.paymentConversationId,
      'fraudStatus': instance.fraudStatus,
      'cardType': instance.cardType,
      'cardAssociation': instance.cardAssociation,
      'cardFamily': instance.cardFamily,
      'cardToken': instance.cardToken,
      'cardUserKey': instance.cardUserKey,
      'binNumber': instance.binNumber,
      'lastFourDigits': instance.lastFourDigits,
      'basketId': instance.basketId,
      'currency': instance.currency,
      'connectorName': instance.connectorName,
      'authCode': instance.authCode,
      'threeDS': instance.threeDS,
      'phase': instance.phase,
      'acquirerBankName': instance.acquirerBankName,
      'mdStatus': instance.mdStatus,
      'hostReference': instance.hostReference,
      'createdDate': instance.createdDate.toIso8601String(),
      'updatedDate': instance.updatedDate.toIso8601String(),
      'orderId': instance.orderId,
      'cancels': instance.cancels,
      'itemTransactions': instance.itemTransactions,
    };
