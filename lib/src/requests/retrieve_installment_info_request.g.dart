// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_installment_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveInstallmentInfoRequest _$RetrieveInstallmentInfoRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveInstallmentInfoRequest(
      binNumber: json['binNumber'] as String,
      price: (json['price'] as num).toDouble(),
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$RetrieveInstallmentInfoRequestToJson(
    RetrieveInstallmentInfoRequest instance) {
  final val = <String, dynamic>{
    'binNumber': instance.binNumber,
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  return val;
}

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
