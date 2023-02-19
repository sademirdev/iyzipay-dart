// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporting_payment_transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportingPaymentTransactionRequest _$ReportingPaymentTransactionRequestFromJson(
        Map<String, dynamic> json) =>
    ReportingPaymentTransactionRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      transactionDate: json['transactionDate'] as String,
      page: json['page'] as int,
    );

Map<String, dynamic> _$ReportingPaymentTransactionRequestToJson(
    ReportingPaymentTransactionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['transactionDate'] = instance.transactionDate;
  val['page'] = instance.page;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
