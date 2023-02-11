// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_checkout_form_initialize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCheckoutFormInitializeRequest
    _$CreateCheckoutFormInitializeRequestFromJson(Map<String, dynamic> json) =>
        CreateCheckoutFormInitializeRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          price: (json['price'] as num).toDouble(),
          paidPrice: (json['paidPrice'] as num).toDouble(),
          basketId: json['basketId'] as String,
          paymentGroup:
              $enumDecode(_$PaymentGroupEnumMap, json['paymentGroup']),
          paymentSource: json['paymentSource'] as String,
          currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
          buyer: Buyer.fromJson(json['buyer'] as Map<String, dynamic>),
          shippingAddress:
              Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
          billingAddress:
              Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
          basketItems: (json['basketItems'] as List<dynamic>)
              .map((e) => BasketItem.fromJson(e as Map<String, dynamic>))
              .toList(),
          callbackUrl: json['callbackUrl'] as String,
          forceThreeDS: json['forceThreeDS'] as int?,
          cardUserKey: json['cardUserKey'] as String,
          posOrderId: json['posOrderId'] as String,
          enabledInstallments: (json['enabledInstallments'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
          debitCardAllowed: json['debitCardAllowed'] as bool,
          paymentWithNewCardEnabled: json['paymentWithNewCardEnabled'] as bool,
          subscriptionPaymentEnabled:
              json['subscriptionPaymentEnabled'] as bool,
          payWithIyzico: json['payWithIyzico'] as bool,
        );

Map<String, dynamic> _$CreateCheckoutFormInitializeRequestToJson(
    CreateCheckoutFormInitializeRequest instance) {
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
  val['basketId'] = instance.basketId;
  val['paymentGroup'] = _$PaymentGroupEnumMap[instance.paymentGroup]!;
  val['paymentSource'] = instance.paymentSource;
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
  val['buyer'] = instance.buyer;
  val['shippingAddress'] = instance.shippingAddress;
  val['billingAddress'] = instance.billingAddress;
  val['basketItems'] = instance.basketItems;
  val['callbackUrl'] = instance.callbackUrl;
  writeNotNull('forceThreeDS', instance.forceThreeDS);
  val['cardUserKey'] = instance.cardUserKey;
  val['posOrderId'] = instance.posOrderId;
  val['enabledInstallments'] = instance.enabledInstallments;
  val['debitCardAllowed'] = instance.debitCardAllowed;
  val['paymentWithNewCardEnabled'] = instance.paymentWithNewCardEnabled;
  val['subscriptionPaymentEnabled'] = instance.subscriptionPaymentEnabled;
  val['payWithIyzico'] = instance.payWithIyzico;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
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
