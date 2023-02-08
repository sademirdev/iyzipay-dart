// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_apm_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveApmRequest _$RetrieveApmRequestFromJson(Map<String, dynamic> json) =>
    RetrieveApmRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String,
    );

Map<String, dynamic> _$RetrieveApmRequestToJson(RetrieveApmRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentId'] = instance.paymentId;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
