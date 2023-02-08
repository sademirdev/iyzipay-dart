// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_apm_initialize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateApmInitializeRequest _$CreateApmInitializeRequestFromJson(
        Map<String, dynamic> json) =>
    CreateApmInitializeRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      price: (json['price'] as num).toDouble(),
      paidPrice: (json['paidPrice'] as num).toDouble(),
      paymentChannel:
          $enumDecode(_$PaymentChannelEnumMap, json['paymentChannel']),
      paymentGroup: $enumDecode(_$PaymentGroupEnumMap, json['paymentGroup']),
      paymentSource: json['paymentSource'] as String,
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      merchantOrderId: json['merchantOrderId'] as String,
      countryCode: json['countryCode'] as String,
      accountHolderName: json['accountHolderName'] as String,
      merchantCallbackUrl: json['merchantCallbackUrl'] as String,
      merchantErrorUrl: json['merchantErrorUrl'] as String,
      merchantNotificationUrl: json['merchantNotificationUrl'] as String,
      apmType: $enumDecode(_$ApmTypeEnumMap, json['apmType']),
      basketId: json['basketId'] as String,
      buyer: Buyer.fromJson(json['buyer'] as Map<String, dynamic>),
      shippingAddress:
          Address.fromJson(json['shippingAddress'] as Map<String, dynamic>),
      billingAddress:
          Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      basketItems: (json['basketItems'] as List<dynamic>)
          .map((e) => BasketItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateApmInitializeRequestToJson(
    CreateApmInitializeRequest instance) {
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
  val['paymentChannel'] = _$PaymentChannelEnumMap[instance.paymentChannel]!;
  val['paymentGroup'] = _$PaymentGroupEnumMap[instance.paymentGroup]!;
  val['paymentSource'] = instance.paymentSource;
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
  val['merchantOrderId'] = instance.merchantOrderId;
  val['countryCode'] = instance.countryCode;
  val['accountHolderName'] = instance.accountHolderName;
  val['merchantCallbackUrl'] = instance.merchantCallbackUrl;
  val['merchantErrorUrl'] = instance.merchantErrorUrl;
  val['merchantNotificationUrl'] = instance.merchantNotificationUrl;
  val['apmType'] = _$ApmTypeEnumMap[instance.apmType]!;
  val['basketId'] = instance.basketId;
  val['buyer'] = instance.buyer;
  val['shippingAddress'] = instance.shippingAddress;
  val['billingAddress'] = instance.billingAddress;
  val['basketItems'] = instance.basketItems;
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

const _$ApmTypeEnumMap = {
  ApmType.sofort: 'SOFORT',
  ApmType.ideal: 'IDEAL',
  ApmType.qiwi: 'QIWI',
  ApmType.giropay: 'GIROPAY',
};
