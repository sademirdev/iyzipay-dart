// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apm_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApmResource _$ApmResourceFromJson(Map<String, dynamic> json) => ApmResource(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      redirectUrl: json['redirectUrl'] as String?,
      price: json['price'] as String?,
      paidPrice: json['paidPrice'] as String?,
      paymentId: json['paymentId'] as String?,
      merchantCommissionRate: json['merchantCommissionRate'] as String?,
      merchantCommissionRateAmount:
          json['merchantCommissionRateAmount'] as String?,
      iyziCommissionRateAmount: json['iyziCommissionRateAmount'] as String?,
      iyziCommissionFee: json['iyziCommissionFee'] as String?,
      basketId: json['basketId'] as String?,
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      paymentItems: (json['itemTransactions'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PaymentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      phase: json['phase'] as String?,
      accountHolderName: json['accountHolderName'] as String?,
      accountNumber: json['accountNumber'] as String?,
      bankName: json['bankName'] as String?,
      bankCode: json['bankCode'] as String?,
      bic: json['bic'] as String?,
      paymentPurpose: json['paymentPurpose'] as String?,
      iban: json['iban'] as String?,
      countryCode: json['countryCode'] as String?,
      apm: json['apm'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$ApmResourceToJson(ApmResource instance) {
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
  writeNotNull('redirectUrl', instance.redirectUrl);
  writeNotNull('price', instance.price);
  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('merchantCommissionRate', instance.merchantCommissionRate);
  writeNotNull(
      'merchantCommissionRateAmount', instance.merchantCommissionRateAmount);
  writeNotNull('iyziCommissionRateAmount', instance.iyziCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull('basketId', instance.basketId);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  writeNotNull('itemTransactions', instance.paymentItems);
  writeNotNull('phase', instance.phase);
  writeNotNull('accountHolderName', instance.accountHolderName);
  writeNotNull('accountNumber', instance.accountNumber);
  writeNotNull('bankName', instance.bankName);
  writeNotNull('bankCode', instance.bankCode);
  writeNotNull('bic', instance.bic);
  writeNotNull('paymentPurpose', instance.paymentPurpose);
  writeNotNull('iban', instance.iban);
  writeNotNull('countryCode', instance.countryCode);
  writeNotNull('apm', instance.apm);
  writeNotNull('mobilePhone', instance.mobilePhone);
  writeNotNull('paymentStatus', instance.paymentStatus);
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
