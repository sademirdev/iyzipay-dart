// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize_checkout_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeCheckoutFormRequest _$InitializeCheckoutFormRequestFromJson(
        Map<String, dynamic> json) =>
    InitializeCheckoutFormRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      price: json['price'] as String,
      basketId: json['basketId'] as String?,
      paymentGroup:
          $enumDecodeNullable(_$PaymentGroupEnumMap, json['paymentGroup']),
      buyer: Buyer.fromJson(json['buyer'] as Map<String, dynamic>),
      shippingAddress:
          Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
      billingAddress:
          Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      basketItems: (json['basketItems'] as List<dynamic>)
          .map((e) => BasketItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      callbackUrl: json['callbackUrl'] as String,
      paymentSource: json['paymentSource'] as String?,
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      posOrderId: json['posOrderId'] as String?,
      paidPrice: json['paidPrice'] as String,
      forceThreeDS: json['forceThreeDS'] as bool?,
      cardUserKey: json['cardUserKey'] as String?,
      enabledInstallments: (json['enabledInstallments'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$InitializeCheckoutFormRequestToJson(
    InitializeCheckoutFormRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['price'] = instance.price;
  writeNotNull('basketId', instance.basketId);
  writeNotNull('paymentGroup', _$PaymentGroupEnumMap[instance.paymentGroup]);
  val['buyer'] = instance.buyer.toJson();
  val['shippingAddress'] = instance.shippingAddress.toJson();
  val['billingAddress'] = instance.billingAddress.toJson();
  val['basketItems'] = instance.basketItems.map((e) => e.toJson()).toList();
  val['callbackUrl'] = instance.callbackUrl;
  writeNotNull('paymentSource', instance.paymentSource);
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
  writeNotNull('posOrderId', instance.posOrderId);
  val['paidPrice'] = instance.paidPrice;
  writeNotNull('forceThreeDS', instance.forceThreeDS);
  writeNotNull('cardUserKey', instance.cardUserKey);
  val['enabledInstallments'] = instance.enabledInstallments;
  return val;
}

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
