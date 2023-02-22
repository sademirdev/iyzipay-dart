// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_refund_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) =>
    CreateRefundRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String,
      price: (json['price'] as num).toDouble(),
      ip: json['ip'] as String,
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      reason: $enumDecode(_$RefundReasonEnumMap, json['reason']),
      description: json['description'] as String,
    );

Map<String, dynamic> _$CreateRefundRequestToJson(CreateRefundRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentTransactionId'] = instance.paymentTransactionId;
  val['price'] = instance.price;
  val['ip'] = instance.ip;
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
  val['reason'] = _$RefundReasonEnumMap[instance.reason]!;
  val['description'] = instance.description;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
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

const _$RefundReasonEnumMap = {
  RefundReason.doublePayment: 'DOUBLE_PAYMENT',
  RefundReason.buyerRequest: 'BUYER_REQUEST',
  RefundReason.fraud: 'FRAUD',
  RefundReason.other: 'OTHER',
};
