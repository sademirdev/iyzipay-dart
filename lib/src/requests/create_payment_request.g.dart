// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentRequest _$CreatePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      price: (json['price'] as num).toDouble(),
      paidPrice: (json['paidPrice'] as num).toDouble(),
      installment: json['installment'] as int? ?? Constants.SINGLE_INSTALLMENT,
      paymentChannel: json['paymentChannel'] as String,
      basketId: json['basketId'] as String,
      paymentGroup: json['paymentGroup'] as String,
      paymentCard:
          PaymentCard.fromJson(json['paymentCard'] as Map<String, dynamic>),
      buyer: Buyer.fromJson(json['buyer'] as Map<String, dynamic>),
      shippingAddress:
          Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
      billingAddress:
          Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      basketItems: (json['basketItems'] as List<dynamic>)
          .map((e) => BasketItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentSource: json['paymentSource'] as String,
      currency: json['currency'] as String,
      posOrderId: json['posOrderId'] as String,
      connectorName: json['connectorName'] as String,
      callbackUrl: json['callbackUrl'] as String,
      gsmNumber: json['gsmNumber'] as String,
      reward: Loyalty.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePaymentRequestToJson(
    CreatePaymentRequest instance) {
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
  val['paymentChannel'] = instance.paymentChannel;
  val['basketId'] = instance.basketId;
  val['paymentGroup'] = instance.paymentGroup;
  val['paymentCard'] = instance.paymentCard;
  val['buyer'] = instance.buyer;
  val['shippingAddress'] = instance.shippingAddress;
  val['billingAddress'] = instance.billingAddress;
  val['basketItems'] = instance.basketItems;
  val['paymentSource'] = instance.paymentSource;
  val['currency'] = instance.currency;
  val['posOrderId'] = instance.posOrderId;
  val['connectorName'] = instance.connectorName;
  val['callbackUrl'] = instance.callbackUrl;
  val['gsmNumber'] = instance.gsmNumber;
  val['reward'] = instance.reward;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
