// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionProductData _$SubscriptionProductDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionProductData(
      referenceCode: json['referenceCode'] as String?,
      createdDate: json['createdDate'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      pricingPlanList: (json['pricingPlans'] as List<dynamic>?)
          ?.map((e) =>
              SubscriptionPricingPlanData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubscriptionProductDataToJson(
    SubscriptionProductData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('referenceCode', instance.referenceCode);
  writeNotNull('createdDate', instance.createdDate);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('status', instance.status);
  writeNotNull('pricingPlans', instance.pricingPlanList);
  return val;
}
