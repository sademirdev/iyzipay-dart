// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      cardAlias: json['cardAlias'] as String,
      cardNumber: json['cardNumber'] as String,
      expireMonth: json['expireMonth'] as String,
      expireYear: json['expireYear'] as String,
      cardHolderName: json['cardHolderName'] as String,
    );

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'cardAlias': instance.cardAlias,
      'cardNumber': instance.cardNumber,
      'expireYear': instance.expireYear,
      'expireMonth': instance.expireMonth,
      'cardHolderName': instance.cardHolderName,
    };
