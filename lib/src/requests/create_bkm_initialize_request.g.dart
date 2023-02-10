// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bkm_initialize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBkmInitializeRequest _$CreateBkmInitializeRequestFromJson(
        Map<String, dynamic> json) =>
    CreateBkmInitializeRequest(
      price: (json['price'] as num).toDouble(),
      basketId: json['basketId'] as String,
      paymentGroup: json['paymentGroup'] as String,
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
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      enabledInstallments: (json['enabledInstallments'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$CreateBkmInitializeRequestToJson(
        CreateBkmInitializeRequest instance) =>
    <String, dynamic>{
      'price': instance.price,
      'basketId': instance.basketId,
      'paymentGroup': instance.paymentGroup,
      'buyer': instance.buyer,
      'shippingAddress': instance.shippingAddress,
      'billingAddress': instance.billingAddress,
      'basketItems': instance.basketItems,
      'callbackUrl': instance.callbackUrl,
      'paymentSource': instance.paymentSource,
      'currency': _$CurrencyEnumMap[instance.currency]!,
      'enabledInstallments': instance.enabledInstallments,
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
