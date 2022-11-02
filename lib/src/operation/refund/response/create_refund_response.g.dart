// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_refund_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateRefundResponse _$CreateRefundResponseFromJson(
        Map<String, dynamic> json) =>
    CreateRefundResponse(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      systemTime: json['systemTime'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      hostReference: json['hostReference'] as String?,
      paymentId: json['paymentId'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$CreateRefundResponseToJson(
    CreateRefundResponse instance) {
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
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('paymentTransactionId', instance.paymentTransactionId);
  writeNotNull('price', instance.price);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  writeNotNull('hostReference', instance.hostReference);
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
  Currency.tl: 'TRY',
  Currency.eur: 'EUR',
  Currency.usd: 'USD',
  Currency.irr: 'IRR',
  Currency.gbp: 'GBP',
  Currency.nok: 'NOK',
  Currency.rub: 'RUB',
  Currency.chf: 'CHF',
};
