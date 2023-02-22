// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporting_payment_detail_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReportingPaymentDetailRequest _$ReportingPaymentDetailRequestFromJson(
        Map<String, dynamic> json) =>
    ReportingPaymentDetailRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String,
      paymentConversationId: json['paymentConversationId'] as String,
    );

Map<String, dynamic> _$ReportingPaymentDetailRequestToJson(
    ReportingPaymentDetailRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentId'] = instance.paymentId;
  val['paymentConversationId'] = instance.paymentConversationId;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
