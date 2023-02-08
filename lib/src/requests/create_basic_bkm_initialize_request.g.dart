// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_basic_bkm_initialize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBasicBkmInitializeRequest _$CreateBasicBkmInitializeRequestFromJson(
        Map<String, dynamic> json) =>
    CreateBasicBkmInitializeRequest(
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      conversationId: json['conversationId'] as String?,
      connectorName: json['connectorName'] as String,
      price: (json['price'] as num).toDouble(),
      callbackUrl: json['callbackUrl'] as String,
      buyerEmail: json['buyerEmail'] as String,
      buyerId: json['buyerId'] as String,
      buyerIp: json['buyerIp'] as String,
      posOrderId: json['posOrderId'] as String,
      installmentDetails: (json['installmentDetails'] as List<dynamic>)
          .map((e) => BkmInstallment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateBasicBkmInitializeRequestToJson(
    CreateBasicBkmInitializeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['connectorName'] = instance.connectorName;
  val['price'] = instance.price;
  val['callbackUrl'] = instance.callbackUrl;
  val['buyerEmail'] = instance.buyerEmail;
  val['buyerId'] = instance.buyerId;
  val['buyerIp'] = instance.buyerIp;
  val['posOrderId'] = instance.posOrderId;
  val['installmentDetails'] = instance.installmentDetails;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
