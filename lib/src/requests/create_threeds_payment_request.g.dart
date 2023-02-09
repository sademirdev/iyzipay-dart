// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_threeds_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateThreedsPaymentRequest _$CreateThreedsPaymentRequestFromJson(
        Map<String, dynamic> json) =>
    CreateThreedsPaymentRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String,
      conversationData: json['conversationData'] as String,
    );

Map<String, dynamic> _$CreateThreedsPaymentRequestToJson(
    CreateThreedsPaymentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentId'] = instance.paymentId;
  val['conversationData'] = instance.conversationData;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
