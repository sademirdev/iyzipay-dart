// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_sub_merchant_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveSubMerchantRequest _$RetrieveSubMerchantRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveSubMerchantRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      subMerchantExternalId: json['subMerchantExternalId'] as String,
    );

Map<String, dynamic> _$RetrieveSubMerchantRequestToJson(
    RetrieveSubMerchantRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['subMerchantExternalId'] = instance.subMerchantExternalId;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
