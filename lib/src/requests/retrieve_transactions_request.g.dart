// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_transactions_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveTransactionsRequest _$RetrieveTransactionsRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveTransactionsRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      date: json['date'] as String,
    );

Map<String, dynamic> _$RetrieveTransactionsRequestToJson(
    RetrieveTransactionsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['date'] = instance.date;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
