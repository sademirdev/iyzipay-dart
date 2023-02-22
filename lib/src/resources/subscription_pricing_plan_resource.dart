import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_pricing_plan_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_pricing_plan_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionPricingPlanResource extends IyzipayResource {
  const SubscriptionPricingPlanResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionPricingPlanData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionPricingPlanData? subscriptionPricingPlanData;

  @override
  SubscriptionPricingPlanResource fromJson(JsonMap json) =>
      _$SubscriptionPricingPlanResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionPricingPlanResourceToJson(this);
}
