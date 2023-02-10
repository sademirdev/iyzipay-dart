// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cancel_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCancelRequest _$CreateCancelRequestFromJson(Map<String, dynamic> json) =>
    CreateCancelRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String,
      ip: json['ip'] as String,
      reason: $enumDecode(_$RefundReasonEnumMap, json['reason']),
      description: json['description'] as String,
    );

Map<String, dynamic> _$CreateCancelRequestToJson(CreateCancelRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentId'] = instance.paymentId;
  val['ip'] = instance.ip;
  val['reason'] = _$RefundReasonEnumMap[instance.reason]!;
  val['description'] = instance.description;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

const _$RefundReasonEnumMap = {
  RefundReason.doublePayment: 'DOUBLE_PAYMENT',
  RefundReason.buyerRequest: 'BUYER_REQUEST',
  RefundReason.fraud: 'FRAUD',
  RefundReason.other: 'OTHER',
};
