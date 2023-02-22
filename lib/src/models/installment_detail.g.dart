// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstallmentDetail _$InstallmentDetailFromJson(Map<String, dynamic> json) =>
    InstallmentDetail(
      binNumber: json['binNumber'] as String,
      price: (json['price'] as num).toDouble(),
      cardType: json['cardType'] as String,
      cardAssociation: json['cardAssociation'] as String,
      cardFamilyName: json['cardFamilyName'] as String,
      force3ds: json['force3ds'] as int?,
      bankCode: json['bankCode'] as int?,
      bankName: json['bankName'] as String,
      forceCvc: json['forceCvc'] as int?,
      commercial: json['commercial'] as int,
      installmentPrices: (json['installmentPrices'] as List<dynamic>)
          .map((e) => InstallmentPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InstallmentDetailToJson(InstallmentDetail instance) {
  final val = <String, dynamic>{
    'binNumber': instance.binNumber,
    'price': instance.price,
    'cardType': instance.cardType,
    'cardAssociation': instance.cardAssociation,
    'cardFamilyName': instance.cardFamilyName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('force3ds', instance.force3ds);
  writeNotNull('bankCode', instance.bankCode);
  val['bankName'] = instance.bankName;
  writeNotNull('forceCvc', instance.forceCvc);
  val['commercial'] = instance.commercial;
  val['installmentPrices'] = instance.installmentPrices;
  return val;
}
