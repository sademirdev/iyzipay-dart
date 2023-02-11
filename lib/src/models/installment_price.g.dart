// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installment_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstallmentPrice _$InstallmentPriceFromJson(Map<String, dynamic> json) =>
    InstallmentPrice(
      installmentPrice: (json['installmentPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      installmentNumber: json['installmentNumber'] as int?,
    );

Map<String, dynamic> _$InstallmentPriceToJson(InstallmentPrice instance) {
  final val = <String, dynamic>{
    'installmentPrice': instance.installmentPrice,
    'totalPrice': instance.totalPrice,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('installmentNumber', instance.installmentNumber);
  return val;
}
