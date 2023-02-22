// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporting_payment_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportingPaymentTransaction _$ReportingPaymentTransactionFromJson(
        Map<String, dynamic> json) =>
    ReportingPaymentTransaction(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => TransactionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: json['currentPage'] as int?,
      totalPageCount: json['totalPageCount'] as int?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$ReportingPaymentTransactionToJson(
    ReportingPaymentTransaction instance) {
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
  writeNotNull('transactions', instance.transactions);
  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('totalPageCount', instance.totalPageCount);
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
