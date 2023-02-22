import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upgrade_subscription_request.g.dart';

@JsonSerializable(includeIfNull: false)
class UpgradeSubscriptionRequest
    extends BaseRequest<UpgradeSubscriptionRequest> {
  UpgradeSubscriptionRequest({
    super.locale,
    super.conversationId,
    required this.subscriptionReferenceCode,
    required this.newPricingPlanReferenceCode,
    required this.upgradePeriod,
    required this.useTrial,
    required this.resetRecurrenceCount,
  });

  final String subscriptionReferenceCode;
  final String newPricingPlanReferenceCode;
  final String upgradePeriod;
  final bool useTrial;
  final bool resetRecurrenceCount;

  @override
  UpgradeSubscriptionRequest fromJson(JsonMap json) =>
      _$UpgradeSubscriptionRequestFromJson(json);

  @override
  JsonMap toJson() => _$UpgradeSubscriptionRequestToJson(this);
}
