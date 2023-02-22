// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_subscription_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatedSubscriptionData _$CreatedSubscriptionDataFromJson(
        Map<String, dynamic> json) =>
    CreatedSubscriptionData(
      parentReferenceCode: json['parentReferenceCode'] as String?,
      referenceCode: json['referenceCode'] as String?,
      pricingPlanReferenceCode: json['pricingPlanReferenceCode'] as String?,
      customerReferenceCode: json['customerReferenceCode'] as String?,
      subscriptionStatus: $enumDecodeNullable(
          _$SubscriptionStatusEnumMap, json['subscriptionStatus']),
      trialDays: json['trialDays'] as int?,
      trialStartDate: json['trialStartDate'] as String?,
      trialEndDate: json['trialEndDate'] as String?,
      canceledAt: json['canceledAt'] as String?,
      createdDate: json['createdDate'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$CreatedSubscriptionDataToJson(
    CreatedSubscriptionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('parentReferenceCode', instance.parentReferenceCode);
  writeNotNull('pricingPlanReferenceCode', instance.pricingPlanReferenceCode);
  writeNotNull('customerReferenceCode', instance.customerReferenceCode);
  writeNotNull('subscriptionStatus',
      _$SubscriptionStatusEnumMap[instance.subscriptionStatus]);
  writeNotNull('trialDays', instance.trialDays);
  writeNotNull('trialStartDate', instance.trialStartDate);
  writeNotNull('trialEndDate', instance.trialEndDate);
  writeNotNull('canceledAt', instance.canceledAt);
  writeNotNull('createdDate', instance.createdDate);
  writeNotNull('startDate', instance.startDate);
  writeNotNull('endDate', instance.endDate);
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
