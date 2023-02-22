// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_order_payment_attempt_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionOrderPaymentAttemptData
    _$SubscriptionOrderPaymentAttemptDataFromJson(Map<String, dynamic> json) =>
        SubscriptionOrderPaymentAttemptData(
          conversationId: json['conversationId'] as String?,
          createdDate: json['createdDate'] as String?,
          paymentId: json['paymentId'] as int?,
          paymentStatus: $enumDecodeNullable(
              _$SubscriptionPaymentStatusEnumMap, json['paymentStatus']),
          errorCode: json['errorCode'] as String?,
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$SubscriptionOrderPaymentAttemptDataToJson(
    SubscriptionOrderPaymentAttemptData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('conversationId', instance.conversationId);
  writeNotNull('createdDate', instance.createdDate);
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('paymentStatus',
      _$SubscriptionPaymentStatusEnumMap[instance.paymentStatus]);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorMessage', instance.errorMessage);
  return val;
}

const _$SubscriptionPaymentStatusEnumMap = {
  SubscriptionPaymentStatus.failed: -1,
  SubscriptionPaymentStatus.success: 1,
  SubscriptionPaymentStatus.processing: 3,
};
