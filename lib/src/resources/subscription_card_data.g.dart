// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_card_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionCardData _$SubscriptionCardDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionCardData(
      cardHolderName: json['cardHolderName'] as String?,
      cardNumber: json['cardNumber'] as String?,
      expireYear: json['expireYear'] as String?,
      expireMonth: json['expireMonth'] as String?,
      cvc: json['cvc'] as String?,
      ucsToken: json['ucsToken'] as String?,
      cardToken: json['cardToken'] as String?,
      consumerToken: json['consumerToken'] as String?,
    );

Map<String, dynamic> _$SubscriptionCardDataToJson(
    SubscriptionCardData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cardHolderName', instance.cardHolderName);
  writeNotNull('cardNumber', instance.cardNumber);
  writeNotNull('expireYear', instance.expireYear);
  writeNotNull('expireMonth', instance.expireMonth);
  writeNotNull('cvc', instance.cvc);
  writeNotNull('ucsToken', instance.ucsToken);
  writeNotNull('cardToken', instance.cardToken);
  writeNotNull('consumerToken', instance.consumerToken);
  return val;
}
