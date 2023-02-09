// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_basic_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBasicPaymentRequest _$CreateBasicPaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CreateBasicPaymentRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      price: (json['price'] as num).toDouble(),
      paidPrice: (json['paidPrice'] as num).toDouble(),
      installment: json['installment'] as int? ?? Constants.SINGLE_INSTALLMENT,
      buyerEmail: json['buyerEmail'] as String,
      buyerId: json['buyerId'] as String,
      buyerIp: json['buyerIp'] as String,
      posOrderId: json['posOrderId'] as String,
      paymentCard:
          PaymentCard.fromJson(json['paymentCard'] as Map<String, dynamic>),
      currency: json['currency'] as String,
      connectorName: json['connectorName'] as String,
      callbackUrl: json['callbackUrl'] as String,
    );

Map<String, dynamic> _$CreateBasicPaymentRequestToJson(
    CreateBasicPaymentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['price'] = instance.price;
  val['paidPrice'] = instance.paidPrice;
  writeNotNull('installment', instance.installment);
  val['buyerEmail'] = instance.buyerEmail;
  val['buyerId'] = instance.buyerId;
  val['buyerIp'] = instance.buyerIp;
  val['posOrderId'] = instance.posOrderId;
  val['paymentCard'] = instance.paymentCard;
  val['currency'] = instance.currency;
  val['connectorName'] = instance.connectorName;
  val['callbackUrl'] = instance.callbackUrl;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
