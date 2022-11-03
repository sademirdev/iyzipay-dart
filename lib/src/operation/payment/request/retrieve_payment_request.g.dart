// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrievePaymentRequest _$RetrievePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    RetrievePaymentRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String,
      paymentConversationId: json['paymentConversationId'] as String,
      ip: json['ip'] as String?,
    );

Map<String, dynamic> _$RetrievePaymentRequestToJson(
    RetrievePaymentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentId'] = instance.paymentId;
  val['paymentConversationId'] = instance.paymentConversationId;
  writeNotNull('ip', instance.ip);
  return val;
}
