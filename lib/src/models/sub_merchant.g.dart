// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubMerchant _$SubMerchantFromJson(Map<String, dynamic> json) => SubMerchant(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      gsmNumber: json['gsmNumber'] as String?,
      address: json['address'] as String?,
      iban: json['iban'] as String?,
      swiftCode: json['swiftCode'] as String?,
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      taxOffice: json['taxOffice'] as String?,
      contactName: json['contactName'] as String?,
      contactSurname: json['contactSurname'] as String?,
      legalCompanyTitle: json['legalCompanyTitle'] as String?,
      subMerchantExternalId: json['subMerchantExternalId'] as String?,
      identityNumber: json['identityNumber'] as String?,
      taxNumber: json['taxNumber'] as String?,
      subMerchantType: json['subMerchantType'] as String?,
      subMerchantKey: json['subMerchantKey'] as String?,
      settlementDescriptionTemplate:
          json['settlementDescriptionTemplate'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$SubMerchantToJson(SubMerchant instance) {
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
  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  writeNotNull('gsmNumber', instance.gsmNumber);
  writeNotNull('address', instance.address);
  writeNotNull('iban', instance.iban);
  writeNotNull('swiftCode', instance.swiftCode);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  writeNotNull('taxOffice', instance.taxOffice);
  writeNotNull('contactName', instance.contactName);
  writeNotNull('contactSurname', instance.contactSurname);
  writeNotNull('legalCompanyTitle', instance.legalCompanyTitle);
  writeNotNull('subMerchantExternalId', instance.subMerchantExternalId);
  writeNotNull('identityNumber', instance.identityNumber);
  writeNotNull('taxNumber', instance.taxNumber);
  writeNotNull('subMerchantType', instance.subMerchantType);
  writeNotNull('subMerchantKey', instance.subMerchantKey);
  writeNotNull(
      'settlementDescriptionTemplate', instance.settlementDescriptionTemplate);
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
