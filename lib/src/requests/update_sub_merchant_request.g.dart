// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_sub_merchant_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSubMerchantRequest _$UpdateSubMerchantRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateSubMerchantRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      gsmNumber: json['gsmNumber'] as String,
      address: json['address'] as String,
      iban: json['iban'] as String,
      taxOffice: json['taxOffice'] as String,
      contactName: json['contactName'] as String,
      contactSurname: json['contactSurname'] as String,
      legalCompanyTitle: json['legalCompanyTitle'] as String,
      swiftCode: json['swiftCode'] as String,
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
      identityNumber: json['identityNumber'] as String,
      taxNumber: json['taxNumber'] as String,
      subMerchantKey: json['subMerchantKey'] as String,
      settlementDescriptionTemplate:
          json['settlementDescriptionTemplate'] as String?,
    );

Map<String, dynamic> _$UpdateSubMerchantRequestToJson(
    UpdateSubMerchantRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['name'] = instance.name;
  val['email'] = instance.email;
  val['gsmNumber'] = instance.gsmNumber;
  val['address'] = instance.address;
  val['iban'] = instance.iban;
  val['taxOffice'] = instance.taxOffice;
  val['contactName'] = instance.contactName;
  val['contactSurname'] = instance.contactSurname;
  val['legalCompanyTitle'] = instance.legalCompanyTitle;
  val['swiftCode'] = instance.swiftCode;
  val['currency'] = _$CurrencyEnumMap[instance.currency]!;
  val['identityNumber'] = instance.identityNumber;
  val['taxNumber'] = instance.taxNumber;
  val['subMerchantKey'] = instance.subMerchantKey;
  writeNotNull(
      'settlementDescriptionTemplate', instance.settlementDescriptionTemplate);
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
