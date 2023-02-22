// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_post_auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentPostAuthRequest _$CreatePaymentPostAuthRequestFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentPostAuthRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String,
      paidPrice: (json['paidPrice'] as num).toDouble(),
      ip: json['ip'] as String,
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$CreatePaymentPostAuthRequestToJson(
    CreatePaymentPostAuthRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentId'] = instance.paymentId;
  val['paidPrice'] = instance.paidPrice;
  val['ip'] = instance.ip;
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
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
