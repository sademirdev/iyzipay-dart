import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_pricing_plan_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionPricingPlanData
    with JsonConvertible<SubscriptionPricingPlanData> {
  SubscriptionPricingPlanData(
    this.referenceCode,
    this.createdDate,
    this.name,
    this.price,
    this.paymentInterval,
    this.paymentIntervalCount,
    this.trialPeriodDays,
    this.currencyCode,
    this.productReferenceCode,
    this.planPaymentType,
    this.status,
    this.recurrenceCount,
  );

  final String? referenceCode;
  final String? createdDate;
  final String? name;
  final double? price;
  final String? paymentInterval;
  final int? trialPeriodDays;
  final int? paymentIntervalCount;
  final String? currencyCode;
  final String? productReferenceCode;
  final SubscriptionPlanPaymentType? planPaymentType;
  final SubscriptionPaymentStatus? status;
  final int? recurrenceCount;

  @override
  SubscriptionPricingPlanData fromJson(JsonMap json) =>
      _$SubscriptionPricingPlanDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionPricingPlanDataToJson(this);
}
