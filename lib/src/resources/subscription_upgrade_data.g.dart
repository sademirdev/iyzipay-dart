// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_upgrade_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionUpgradeData _$SubscriptionUpgradeDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionUpgradeData(
      json['referenceCode'] as String?,
      json['parentReferenceCode'] as String?,
      json['pricingPlanReferenceCode'] as String?,
      json['customerReferenceCode'] as String?,
      $enumDecodeNullable(
          _$SubscriptionStatusEnumMap, json['subscriptionStatus']),
      json['trialDays'] as int?,
      json['trialStartDate'] as String?,
      json['trialEndDate'] as String?,
      json['canceledAt'] as String?,
      json['createdDate'] as String?,
      json['startDate'] as String?,
      json['endDate'] as String?,
    );

Map<String, dynamic> _$SubscriptionUpgradeDataToJson(
    SubscriptionUpgradeData instance) {
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
