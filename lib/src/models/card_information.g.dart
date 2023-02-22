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
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CardInformationToJson(CardInformation instance) {
  final val = <String, dynamic>{
    'cardAlias': instance.cardAlias,
    'cardNumber': instance.cardNumber,
    'expireYear': instance.expireYear,
    'expireMonth': instance.expireMonth,
    'cardHolderName': instance.cardHolderName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  return val;
}
