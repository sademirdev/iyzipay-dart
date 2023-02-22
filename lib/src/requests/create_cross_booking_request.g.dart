// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cross_booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCrossBookingRequest _$CreateCrossBookingRequestFromJson(
        Map<String, dynamic> json) =>
    CreateCrossBookingRequest(
      subMerchantKey: json['subMerchantKey'] as String,
      price: (json['price'] as num).toDouble(),
      reason: json['reason'] as String,
      currency: $enumDecode(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$CreateCrossBookingRequestToJson(
        CreateCrossBookingRequest instance) =>
    <String, dynamic>{
      'subMerchantKey': instance.subMerchantKey,
      'price': instance.price,
      'reason': instance.reason,
      'currency': _$CurrencyEnumMap[instance.currency]!,
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
