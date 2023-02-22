// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bkm_installment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BkmInstallment _$BkmInstallmentFromJson(Map<String, dynamic> json) =>
    BkmInstallment(
      bankId: json['bankId'] as int?,
      installmentPrices: (json['installmentPrices'] as List<dynamic>)
          .map((e) => BkmInstallmentPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BkmInstallmentToJson(BkmInstallment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bankId', instance.bankId);
  val['installmentPrices'] = instance.installmentPrices;
  return val;
}
