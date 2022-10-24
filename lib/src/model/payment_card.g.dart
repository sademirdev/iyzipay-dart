// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentCard _$PaymentCardFromJson(Map<String, dynamic> json) => PaymentCard(
      cardHolderName: json['cardHolderName'] as String,
      cardNumber: json['cardNumber'] as String,
      expireYear: json['expireYear'] as String,
      expireMonth: json['expireMonth'] as String,
      cvc: json['cvc'] as String,
      registerCard: json['registerCard'] as int?,
    );

Map<String, dynamic> _$PaymentCardToJson(PaymentCard instance) {
  final val = <String, dynamic>{
    'cardHolderName': instance.cardHolderName,
    'cardNumber': instance.cardNumber,
    'expireYear': instance.expireYear,
    'expireMonth': instance.expireMonth,
    'cvc': instance.cvc,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('registerCard', instance.registerCard);
  return val;
}
