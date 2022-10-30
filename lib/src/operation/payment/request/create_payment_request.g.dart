// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentRequest _$CreatePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      price: json['price'] as String,
      paidPrice: json['paidPrice'] as String,
      installment: json['installment'] as int,
      paymentChannel:
          $enumDecodeNullable(_$PaymentChannelEnumMap, json['paymentChannel']),
      basketId: json['basketId'] as String?,
      paymentGroup:
          $enumDecodeNullable(_$PaymentGroupEnumMap, json['paymentGroup']),
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
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$CreatePaymentRequestToJson(
    CreatePaymentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['price'] = instance.price;
  val['paidPrice'] = instance.paidPrice;
  val['installment'] = instance.installment;
  writeNotNull(
      'paymentChannel', _$PaymentChannelEnumMap[instance.paymentChannel]);
  writeNotNull('basketId', instance.basketId);
  writeNotNull('paymentGroup', _$PaymentGroupEnumMap[instance.paymentGroup]);
  val['paymentCard'] = instance.paymentCard.toJson();
  val['buyer'] = instance.buyer.toJson();
  val['shippingAddress'] = instance.shippingAddress.toJson();
  val['billingAddress'] = instance.billingAddress.toJson();
  val['basketItems'] = instance.basketItems.map((e) => e.toJson()).toList();
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
  return val;
}

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
  Currency.tl: 'TRY',
  Currency.eur: 'EUR',
  Currency.usd: 'USD',
  Currency.irr: 'IRR',
  Currency.gbp: 'GBP',
  Currency.nok: 'NOK',
  Currency.rub: 'RUB',
  Currency.chf: 'CHF',
};
