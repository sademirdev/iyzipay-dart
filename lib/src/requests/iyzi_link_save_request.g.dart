// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iyzi_link_save_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IyziLinkSaveRequest _$IyziLinkSaveRequestFromJson(Map<String, dynamic> json) =>
    IyziLinkSaveRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      base64EncodedImage: json['encodedImageFile'] as String,
      price: (json['price'] as num).toDouble(),
      currency: $enumDecode(_$CurrencyEnumMap, json['currencyCode']),
      addressIgnorable: json['addressIgnorable'] as bool?,
      soldLimit: json['soldLimit'] as int?,
      installmentRequested: json['installmentRequested'] as bool?,
    );

Map<String, dynamic> _$IyziLinkSaveRequestToJson(IyziLinkSaveRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['name'] = instance.name;
  val['description'] = instance.description;
  val['encodedImageFile'] = instance.base64EncodedImage;
  val['price'] = instance.price;
  val['currencyCode'] = _$CurrencyEnumMap[instance.currency]!;
  writeNotNull('addressIgnorable', instance.addressIgnorable);
  writeNotNull('soldLimit', instance.soldLimit);
  writeNotNull('installmentRequested', instance.installmentRequested);
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
