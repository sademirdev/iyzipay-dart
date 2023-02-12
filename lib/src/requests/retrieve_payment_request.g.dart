// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrievePaymentRequest _$RetrievePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    RetrievePaymentRequest(
      paymentId: json['paymentId'] as String,
      paymentConversationId: json['paymentConversationId'] as String,
    );

Map<String, dynamic> _$RetrievePaymentRequestToJson(
        RetrievePaymentRequest instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'paymentConversationId': instance.paymentConversationId,
    };
