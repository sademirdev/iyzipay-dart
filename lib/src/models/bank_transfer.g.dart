// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankTransfer _$BankTransferFromJson(Map<String, dynamic> json) => BankTransfer(
      subMerchantKey: json['subMerchantKey'] as String,
      iban: json['iban'] as String,
      contactName: json['contactName'] as String,
      contactSurname: json['contactSurname'] as String,
      legalCompanyTitle: json['legalCompanyTitle'] as String,
      marketplaceSubMerchantType: json['marketplaceSubmerchantType'] as String,
    );

Map<String, dynamic> _$BankTransferToJson(BankTransfer instance) =>
    <String, dynamic>{
      'subMerchantKey': instance.subMerchantKey,
      'iban': instance.iban,
      'contactName': instance.contactName,
      'contactSurname': instance.contactSurname,
      'legalCompanyTitle': instance.legalCompanyTitle,
      'marketplaceSubmerchantType': instance.marketplaceSubMerchantType,
    };
