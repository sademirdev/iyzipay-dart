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
      cardAlias: json['cardAlias'] as String,
      cardToken: json['cardToken'] as String,
      cardUserKey: json['cardUserKey'] as String,
      metadata: Map<String, String>.from(json['metadata'] as Map),
      consumerToken: json['consumerToken'] as String,
      registerConsumerCard: json['registerConsumerCard'] as bool,
      ucsToken: json['ucsToken'] as String,
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
  val['cardAlias'] = instance.cardAlias;
  val['cardToken'] = instance.cardToken;
  val['cardUserKey'] = instance.cardUserKey;
  val['metadata'] = instance.metadata;
  val['consumerToken'] = instance.consumerToken;
  val['registerConsumerCard'] = instance.registerConsumerCard;
  val['ucsToken'] = instance.ucsToken;
  return val;
}
