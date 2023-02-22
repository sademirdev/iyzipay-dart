// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_inquire_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyInquireRequest _$LoyaltyInquireRequestFromJson(
        Map<String, dynamic> json) =>
    LoyaltyInquireRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentCard: LoyaltyPaymentCard.fromJson(
          json['paymentCard'] as Map<String, dynamic>),
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$LoyaltyInquireRequestToJson(
    LoyaltyInquireRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentCard'] = instance.paymentCard;
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
