// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_order_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionOrderData _$SubscriptionOrderDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionOrderData(
      referenceCode: json['referenceCode'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      currencyCode: json['currencyCode'] as String?,
      startPeriod: json['startPeriod'] as String?,
      endPeriod: json['endPeriod'] as String?,
      orderStatus: $enumDecodeNullable(
          _$SubscriptionOrderStatusEnumMap, json['orderStatus']),
      orderPaymentAttempts: (json['paymentAttempts'] as List<dynamic>?)
          ?.map((e) => SubscriptionOrderPaymentAttemptData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubscriptionOrderDataToJson(
    SubscriptionOrderData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('price', instance.price);
  writeNotNull('currencyCode', instance.currencyCode);
  writeNotNull('startPeriod', instance.startPeriod);
  writeNotNull('endPeriod', instance.endPeriod);
  writeNotNull(
      'orderStatus', _$SubscriptionOrderStatusEnumMap[instance.orderStatus]);
  writeNotNull('paymentAttempts', instance.orderPaymentAttempts);
  return val;
}

const _$SubscriptionOrderStatusEnumMap = {
  SubscriptionOrderStatus.merchantSuspended: -99,
  SubscriptionOrderStatus.failed: -1,
  SubscriptionOrderStatus.success: 1,
  SubscriptionOrderStatus.waiting: 2,
  SubscriptionOrderStatus.processing: 3,
  SubscriptionOrderStatus.subscriptionUpgraded: 4,
  SubscriptionOrderStatus.subscriptionCanceled: 5,
  SubscriptionOrderStatus.queued: 6,
};
