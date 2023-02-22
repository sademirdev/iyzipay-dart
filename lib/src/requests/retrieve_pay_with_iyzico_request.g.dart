// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_pay_with_iyzico_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrievePayWithIyzicoRequest _$RetrievePayWithIyzicoRequestFromJson(
        Map<String, dynamic> json) =>
    RetrievePayWithIyzicoRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$RetrievePayWithIyzicoRequestToJson(
    RetrievePayWithIyzicoRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['token'] = instance.token;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
