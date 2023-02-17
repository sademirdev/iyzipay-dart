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
      paymentChannel:
          $enumDecode(_$PaymentChannelEnumMap, json['paymentChannel']),
      basketId: json['basketId'] as String,
      paymentGroup: $enumDecode(_$PaymentGroupEnumMap, json['paymentGroup']),
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
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      posOrderId: json['posOrderId'] as String,
      connectorName: json['connectorName'] as String,
      callbackUrl: json['callbackUrl'] as String,
      gsmNumber: json['gsmNumber'] as String,
      reward: json['reward'] == null
          ? null
          : Loyalty.fromJson(json['reward'] as Map<String, dynamic>),
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
  val['paymentChannel'] = _$PaymentChannelEnumMap[instance.paymentChannel]!;
  val['basketId'] = instance.basketId;
  val['paymentGroup'] = _$PaymentGroupEnumMap[instance.paymentGroup]!;
  val['paymentCard'] = instance.paymentCard;
  val['buyer'] = instance.buyer;
  val['shippingAddress'] = instance.shippingAddress;
  val['billingAddress'] = instance.billingAddress;
  val['basketItems'] = instance.basketItems;
  val['paymentSource'] = instance.paymentSource;
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
  val['posOrderId'] = instance.posOrderId;
  val['connectorName'] = instance.connectorName;
  val['callbackUrl'] = instance.callbackUrl;
  val['gsmNumber'] = instance.gsmNumber;
  writeNotNull('reward', instance.reward);
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

const _$PaymentChannelEnumMap = {
  PaymentChannel.mobile: 'MOBILE',
  PaymentChannel.web: 'WEB',
  PaymentChannel.mobileWeb: 'MOBILE_WEB',
  PaymentChannel.mobileIOS: 'MOBILE_IOS',
  PaymentChannel.mobileAndroid: 'MOBILE_ANDROID',
  PaymentChannel.mobileWindows: 'MOBILE_WINDOWS',
  PaymentChannel.mobileTablet: 'MOBILE_TABLET',
  PaymentChannel.mobilePhone: 'MOBILE_PHONE',
};

const _$PaymentGroupEnumMap = {
  PaymentGroup.product: 'PRODUCT',
  PaymentGroup.listing: 'LISTING',
  PaymentGroup.subscription: 'SUBSCRIPTION',
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
