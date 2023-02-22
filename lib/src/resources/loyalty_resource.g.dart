// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyResource _$LoyaltyResourceFromJson(Map<String, dynamic> json) =>
    LoyaltyResource(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      points: (json['points'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      cardBank: json['cardBank'] as String?,
      cardFamily: json['cardFamily'] as String?,
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$LoyaltyResourceToJson(LoyaltyResource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$IyzipayStatusEnumMap[instance.status]);
  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('systemTime', instance.systemTime);
  writeNotNull('conversationId', instance.conversationId);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorMessage', instance.errorMessage);
  writeNotNull('errorGroup', instance.errorGroup);
  writeNotNull('points', instance.points);
  writeNotNull('amount', instance.amount);
  writeNotNull('cardBank', instance.cardBank);
  writeNotNull('cardFamily', instance.cardFamily);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  return val;
}

const _$IyzipayStatusEnumMap = {
  IyzipayStatus.success: 'success',
  IyzipayStatus.failure: 'failure',
};

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
