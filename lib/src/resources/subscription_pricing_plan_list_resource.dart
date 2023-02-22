import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_pricing_plan_list_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_pricing_plan_list_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionPricingPlanListResource extends IyzipayResource {
  const SubscriptionPricingPlanListResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionPricingPlanListData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionPricingPlanListData? subscriptionPricingPlanListData;

  @override
  SubscriptionPricingPlanListResource fromJson(JsonMap json) =>
      _$SubscriptionPricingPlanListResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionPricingPlanListResourceToJson(this);
}
