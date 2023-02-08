// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_approval_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateApprovalRequest _$CreateApprovalRequestFromJson(
        Map<String, dynamic> json) =>
    CreateApprovalRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String,
    );

Map<String, dynamic> _$CreateApprovalRequestToJson(
    CreateApprovalRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentTransactionId'] = instance.paymentTransactionId;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
