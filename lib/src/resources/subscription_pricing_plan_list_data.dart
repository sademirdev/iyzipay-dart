import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_pricing_plan_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_pricing_plan_list_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionPricingPlanListData
    with JsonConvertible<SubscriptionPricingPlanListData> {
  SubscriptionPricingPlanListData({
    this.subscriptionPricingPlansResource,
    this.totalCount,
    this.currentPage,
    this.pageCount,
  });

  @JsonKey(name: 'items')
  final List<SubscriptionPricingPlanData>? subscriptionPricingPlansResource;
  final int? totalCount;
  final int? currentPage;
  final int? pageCount;

  @override
  SubscriptionPricingPlanListData fromJson(JsonMap json) =>
      _$SubscriptionPricingPlanListDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionPricingPlanListDataToJson(this);
}
