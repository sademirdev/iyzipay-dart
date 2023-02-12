// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_amount_based_refund_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAmountBasedRefundRequest _$CreateAmountBasedRefundRequestFromJson(
        Map<String, dynamic> json) =>
    CreateAmountBasedRefundRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String,
      price: json['price'] as String,
      ip: json['ip'] as String,
    );

Map<String, dynamic> _$CreateAmountBasedRefundRequestToJson(
    CreateAmountBasedRefundRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentId'] = instance.paymentId;
  val['price'] = instance.price;
  val['ip'] = instance.ip;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
