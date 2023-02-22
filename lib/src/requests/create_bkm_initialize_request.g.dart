// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bkm_initialize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBkmInitializeRequest _$CreateBkmInitializeRequestFromJson(
        Map<String, dynamic> json) =>
    CreateBkmInitializeRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      price: (json['price'] as num).toDouble(),
      basketId: json['basketId'] as String,
      paymentGroup: $enumDecode(_$PaymentGroupEnumMap, json['paymentGroup']),
      buyer: Buyer.fromJson(json['buyer'] as Map<String, dynamic>),
      shippingAddress:
          Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
      billingAddress:
          Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      basketItems: (json['basketItems'] as List<dynamic>)
          .map((e) => BasketItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      callbackUrl: json['callbackUrl'] as String,
      paymentSource: json['paymentSource'] as String,
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      enabledInstallments: (json['enabledInstallments'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$CreateBkmInitializeRequestToJson(
    CreateBkmInitializeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['price'] = instance.price;
  val['basketId'] = instance.basketId;
  val['paymentGroup'] = _$PaymentGroupEnumMap[instance.paymentGroup]!;
  val['buyer'] = instance.buyer;
  val['shippingAddress'] = instance.shippingAddress;
  val['billingAddress'] = instance.billingAddress;
  val['basketItems'] = instance.basketItems;
  val['callbackUrl'] = instance.callbackUrl;
  val['paymentSource'] = instance.paymentSource;
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  writeNotNull('enabledInstallments', instance.enabledInstallments);
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
