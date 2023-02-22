// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_pricing_plan_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionPricingPlanData _$SubscriptionPricingPlanDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionPricingPlanData(
      json['referenceCode'] as String?,
      json['createdDate'] as String?,
      json['name'] as String?,
      (json['price'] as num?)?.toDouble(),
      json['paymentInterval'] as String?,
      json['paymentIntervalCount'] as int?,
      json['trialPeriodDays'] as int?,
      json['currencyCode'] as String?,
      json['productReferenceCode'] as String?,
      $enumDecodeNullable(
          _$SubscriptionPlanPaymentTypeEnumMap, json['planPaymentType']),
      $enumDecodeNullable(_$SubscriptionPaymentStatusEnumMap, json['status']),
      json['recurrenceCount'] as int?,
    );

Map<String, dynamic> _$SubscriptionPricingPlanDataToJson(
    SubscriptionPricingPlanData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('createdDate', instance.createdDate);
  writeNotNull('name', instance.name);
  writeNotNull('price', instance.price);
  writeNotNull('paymentInterval', instance.paymentInterval);
  writeNotNull('trialPeriodDays', instance.trialPeriodDays);
  writeNotNull('paymentIntervalCount', instance.paymentIntervalCount);
  writeNotNull('currencyCode', instance.currencyCode);
  writeNotNull('productReferenceCode', instance.productReferenceCode);
  writeNotNull('planPaymentType',
      _$SubscriptionPlanPaymentTypeEnumMap[instance.planPaymentType]);
  writeNotNull('status', _$SubscriptionPaymentStatusEnumMap[instance.status]);
  writeNotNull('recurrenceCount', instance.recurrenceCount);
  return val;
}

const _$SubscriptionPlanPaymentTypeEnumMap = {
  SubscriptionPlanPaymentType.recurring: 1,
};

const _$SubscriptionPaymentStatusEnumMap = {
  SubscriptionPaymentStatus.failed: -1,
  SubscriptionPaymentStatus.success: 1,
  SubscriptionPaymentStatus.processing: 3,
};
