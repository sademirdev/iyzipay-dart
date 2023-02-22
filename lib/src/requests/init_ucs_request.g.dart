// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_ucs_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitUcsRequest _$InitUcsRequestFromJson(Map<String, dynamic> json) =>
    InitUcsRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      email: json['email'] as String,
      gsmNumber: json['gsmNumber'] as String,
    );

Map<String, dynamic> _$InitUcsRequestToJson(InitUcsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['email'] = instance.email;
  val['gsmNumber'] = instance.gsmNumber;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
