// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialize_bkm_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitializeBkmRequest _$InitializeBkmRequestFromJson(
        Map<String, dynamic> json) =>
    InitializeBkmRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      price: json['price'] as String,
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
      paymentSource: json['paymentSource'] as String?,
      enabledInstallments: (json['enabledInstallments'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$InitializeBkmRequestToJson(
    InitializeBkmRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['price'] = instance.price;
  val['basketId'] = instance.basketId;
  val['paymentGroup'] = _$PaymentGroupEnumMap[instance.paymentGroup]!;
  val['buyer'] = instance.buyer.toJson();
  val['shippingAddress'] = instance.shippingAddress.toJson();
  val['billingAddress'] = instance.billingAddress.toJson();
  val['basketItems'] = instance.basketItems.map((e) => e.toJson()).toList();
  val['callbackUrl'] = instance.callbackUrl;
  writeNotNull('paymentSource', instance.paymentSource);
  val['enabledInstallments'] = instance.enabledInstallments;
  return val;
}

const _$PaymentGroupEnumMap = {
  PaymentGroup.product: 'PRODUCT',
  PaymentGroup.listing: 'LISTING',
  PaymentGroup.subscription: 'SUBSCRIPTION',
};
