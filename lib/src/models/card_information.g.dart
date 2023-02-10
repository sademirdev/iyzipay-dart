// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardInformation _$CardInformationFromJson(Map<String, dynamic> json) =>
    CardInformation(
      cardAlias: json['cardAlias'] as String,
      cardNumber: json['cardNumber'] as String,
      expireYear: json['expireYear'] as String,
      expireMonth: json['expireMonth'] as String,
      cardHolderName: json['cardHolderName'] as String,
      metadata: Map<String, String>.from(json['metadata'] as Map),
    );

Map<String, dynamic> _$CardInformationToJson(CardInformation instance) =>
    <String, dynamic>{
      'cardAlias': instance.cardAlias,
      'cardNumber': instance.cardNumber,
      'expireYear': instance.expireYear,
      'expireMonth': instance.expireMonth,
      'cardHolderName': instance.cardHolderName,
      'metadata': instance.metadata,
    };
