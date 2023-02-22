// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bounced_bank_transfer_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BouncedBankTransferList _$BouncedBankTransferListFromJson(
        Map<String, dynamic> json) =>
    BouncedBankTransferList(
      bankTransfers: (json['bouncedRows'] as List<dynamic>?)
          ?.map((e) => BankTransfer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BouncedBankTransferListToJson(
    BouncedBankTransferList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bouncedRows', instance.bankTransfers);
  return val;
}
