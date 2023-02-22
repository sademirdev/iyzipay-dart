// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_charged_from_merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefundChargedFromMerchant _$RefundChargedFromMerchantFromJson(
        Map<String, dynamic> json) =>
    RefundChargedFromMerchant(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      authCode: (json['authCode'] as num?)?.toDouble(),
      hostReference: json['hostReference'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$RefundChargedFromMerchantToJson(
    RefundChargedFromMerchant instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$IyzipayStatusEnumMap[instance.status]);
  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('systemTime', instance.systemTime);
  writeNotNull('conversationId', instance.conversationId);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorMessage', instance.errorMessage);
  writeNotNull('errorGroup', instance.errorGroup);
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('paymentTransactionId', instance.paymentTransactionId);
  writeNotNull('price', instance.price);
  writeNotNull('authCode', instance.authCode);
  writeNotNull('hostReference', instance.hostReference);
  return val;
}

const _$IyzipayStatusEnumMap = {
  IyzipayStatus.success: 'success',
  IyzipayStatus.failure: 'failure',
};

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
