// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bin_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BinNumber _$BinNumberFromJson(Map<String, dynamic> json) => BinNumber(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      binNumber: json['binNumber'] as String?,
      cardType: json['cardType'] as String?,
      cardAssociation: json['cardAssociation'] as String?,
      cardFamily: json['cardFamily'] as String?,
      bankName: json['bankName'] as String?,
      bankCode: json['bankCode'] as int?,
      commercial: json['commercial'] as int?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$BinNumberToJson(BinNumber instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$IyzipayStatusEnumMap[instance.status]);
  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('systemTime', instance.systemTime);
  writeNotNull('conversationId', instance.conversationId);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorMessage', instance.errorMessage);
  writeNotNull('errorGroup', instance.errorGroup);
  writeNotNull('binNumber', instance.binNumber);
  writeNotNull('cardType', instance.cardType);
  writeNotNull('cardAssociation', instance.cardAssociation);
  writeNotNull('cardFamily', instance.cardFamily);
  writeNotNull('bankName', instance.bankName);
  writeNotNull('bankCode', instance.bankCode);
  writeNotNull('commercial', instance.commercial);
  return val;
}

const _$IyzipayStatusEnumMap = {
  IyzipayStatus.success: 'success',
  IyzipayStatus.failure: 'failure',
};

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
