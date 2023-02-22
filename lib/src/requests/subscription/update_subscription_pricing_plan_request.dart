import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_subscription_pricing_plan_request.g.dart';

@JsonSerializable(includeIfNull: false)
class UpdateSubscriptionPricingPlanRequest
    extends BaseRequest<UpdateSubscriptionPricingPlanRequest> {
  UpdateSubscriptionPricingPlanRequest({
    super.locale,
    super.conversationId,
    required this.subscriptionPricingPlanReferenceCode,
    required this.name,
    this.trialPeriodDays,
  });

  final String subscriptionPricingPlanReferenceCode;
  final String name;
  final int? trialPeriodDays;

  @override
  UpdateSubscriptionPricingPlanRequest fromJson(JsonMap json) =>
      _$UpdateSubscriptionPricingPlanRequestFromJson(json);

  @override
  JsonMap toJson() => _$UpdateSubscriptionPricingPlanRequestToJson(this);
}
