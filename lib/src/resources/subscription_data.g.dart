// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) =>
    SubscriptionData(
      referenceCode: json['referenceCode'] as String?,
      parentReferenceCode: json['parentReferenceCode'] as String?,
      pricingPlanName: json['pricingPlanName'] as String?,
      pricingPlanReferenceCode: json['pricingPlanReferenceCode'] as String?,
      productName: json['productName'] as String?,
      productReferenceCode: json['productReferenceCode'] as String?,
      customerEmail: json['customerEmail'] as String?,
      customerReferenceCode: json['customerReferenceCode'] as String?,
      customerGsmNumber: json['customerGsmNumber'] as String?,
      paymentId: json['paymentId'] as int?,
      subscriptionStatus: $enumDecodeNullable(
          _$SubscriptionStatusEnumMap, json['subscriptionStatus']),
      trialDays: json['trialDays'] as int?,
      trialStartDate: json['trialStartDate'] as String?,
      trialEndDate: json['trialEndDate'] as String?,
      canceledAt: json['canceledAt'] as String?,
      createdDate: json['createdDate'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      subscriptionOrders: (json['orders'] as List<dynamic>?)
          ?.map(
              (e) => SubscriptionOrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubscriptionDataToJson(SubscriptionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('parentReferenceCode', instance.parentReferenceCode);
  writeNotNull('pricingPlanName', instance.pricingPlanName);
  writeNotNull('pricingPlanReferenceCode', instance.pricingPlanReferenceCode);
  writeNotNull('productName', instance.productName);
  writeNotNull('productReferenceCode', instance.productReferenceCode);
  writeNotNull('customerEmail', instance.customerEmail);
  writeNotNull('customerReferenceCode', instance.customerReferenceCode);
  writeNotNull('customerGsmNumber', instance.customerGsmNumber);
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('subscriptionStatus',
      _$SubscriptionStatusEnumMap[instance.subscriptionStatus]);
  writeNotNull('trialDays', instance.trialDays);
  writeNotNull('trialStartDate', instance.trialStartDate);
  writeNotNull('trialEndDate', instance.trialEndDate);
  writeNotNull('canceledAt', instance.canceledAt);
  writeNotNull('createdDate', instance.createdDate);
  writeNotNull('startDate', instance.startDate);
  writeNotNull('endDate', instance.endDate);
  writeNotNull('orders', instance.subscriptionOrders);
  return val;
}

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.merchantSuspended: -99,
  SubscriptionStatus.expired: -4,
  SubscriptionStatus.unpaid: -3,
  SubscriptionStatus.canceled: -1,
  SubscriptionStatus.active: 1,
  SubscriptionStatus.pending: 2,
  SubscriptionStatus.upgraded: 3,
};
