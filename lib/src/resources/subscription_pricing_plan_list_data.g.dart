// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_pricing_plan_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionPricingPlanListData _$SubscriptionPricingPlanListDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionPricingPlanListData(
      subscriptionPricingPlansResource: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              SubscriptionPricingPlanData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int?,
      currentPage: json['currentPage'] as int?,
      pageCount: json['pageCount'] as int?,
    );

Map<String, dynamic> _$SubscriptionPricingPlanListDataToJson(
    SubscriptionPricingPlanListData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.subscriptionPricingPlansResource);
  writeNotNull('totalCount', instance.totalCount);
  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('pageCount', instance.pageCount);
  return val;
}
