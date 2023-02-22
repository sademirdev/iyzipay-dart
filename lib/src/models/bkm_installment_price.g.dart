// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bkm_installment_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BkmInstallmentPrice _$BkmInstallmentPriceFromJson(Map<String, dynamic> json) =>
    BkmInstallmentPrice(
      installmentNumber: json['installmentNumber'] as int?,
      totalPrice: (json['totalPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$BkmInstallmentPriceToJson(BkmInstallmentPrice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('installmentNumber', instance.installmentNumber);
  val['totalPrice'] = instance.totalPrice;
  return val;
}
