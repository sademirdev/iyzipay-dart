import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_pricing_plan_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_product_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionProductData with JsonConvertible<SubscriptionProductData> {
  SubscriptionProductData({
    this.referenceCode,
    this.createdDate,
    this.name,
    this.description,
    this.status,
    this.pricingPlanList,
  });

  final String? referenceCode;
  final String? createdDate;
  final String? name;
  final String? description;
  final String? status;
  @JsonKey(name: 'pricingPlans')
  final List<SubscriptionPricingPlanData>? pricingPlanList;

  @override
  SubscriptionProductData fromJson(JsonMap json) =>
      _$SubscriptionProductDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionProductDataToJson(this);
}
