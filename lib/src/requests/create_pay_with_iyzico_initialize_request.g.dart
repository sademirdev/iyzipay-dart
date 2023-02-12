// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pay_with_iyzico_initialize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePayWithIyzicoInitializeRequest
    _$CreatePayWithIyzicoInitializeRequestFromJson(Map<String, dynamic> json) =>
        CreatePayWithIyzicoInitializeRequest(
          price: json['price'] as String,
          paidPrice: json['paidPrice'] as String,
          basketId: json['basketId'] as String,
          paymentGroup: json['paymentGroup'] as String,
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
        );

Map<String, dynamic> _$CreatePayWithIyzicoInitializeRequestToJson(
    CreatePayWithIyzicoInitializeRequest instance) {
  final val = <String, dynamic>{
    'price': instance.price,
    'paidPrice': instance.paidPrice,
    'basketId': instance.basketId,
    'paymentGroup': instance.paymentGroup,
    'paymentSource': instance.paymentSource,
    'currency': _$CurrencyEnumMap[instance.currency]!,
    'buyer': instance.buyer,
    'shippingAddress': instance.shippingAddress,
    'billingAddress': instance.billingAddress,
    'basketItems': instance.basketItems,
    'callbackUrl': instance.callbackUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('forceThreeDS', instance.forceThreeDS);
  val['cardUserKey'] = instance.cardUserKey;
  val['posOrderId'] = instance.posOrderId;
  val['enabledInstallments'] = instance.enabledInstallments;
  return val;
}

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
