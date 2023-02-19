// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_payment_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyPaymentCard _$LoyaltyPaymentCardFromJson(Map<String, dynamic> json) =>
    LoyaltyPaymentCard(
      cardHolderName: json['cardHolderName'] as String,
      cardNumber: json['cardNumber'] as String,
      expireYear: json['expireYear'] as String,
      expireMonth: json['expireMonth'] as String,
      cvc: json['cvc'] as String,
      cardUserKey: json['cardUserKey'] as String,
      cardToken: json['cardToken'] as String,
    );

Map<String, dynamic> _$LoyaltyPaymentCardToJson(LoyaltyPaymentCard instance) =>
    <String, dynamic>{
      'cardHolderName': instance.cardHolderName,
      'cardNumber': instance.cardNumber,
      'expireYear': instance.expireYear,
      'expireMonth': instance.expireMonth,
      'cvc': instance.cvc,
      'cardUserKey': instance.cardUserKey,
      'cardToken': instance.cardToken,
    };
