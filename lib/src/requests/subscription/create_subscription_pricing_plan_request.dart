import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_subscription_pricing_plan_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateSubscriptionPricingPlanRequest
    extends BaseRequest<CreateSubscriptionPricingPlanRequest> {
  CreateSubscriptionPricingPlanRequest({
    super.locale,
    super.conversationId,
    required this.subscriptionProductReferenceCode,
    required this.name,
    required this.price,
    required this.currencyCode,
    required this.paymentInterval,
    this.paymentIntervalCount,
    this.trialPeriodDays,
    required this.planPaymentType,
    this.recurrenceCount,
  });

  // Note: this might cause problem
  final String subscriptionProductReferenceCode;
  final String name;
  final double price;
  final String currencyCode;
  final String paymentInterval;
  final int? paymentIntervalCount;
  final int? trialPeriodDays;
  final String planPaymentType;
  final int? recurrenceCount;

  @override
  CreateSubscriptionPricingPlanRequest fromJson(JsonMap json) =>
      _$CreateSubscriptionPricingPlanRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateSubscriptionPricingPlanRequestToJson(this);
}
