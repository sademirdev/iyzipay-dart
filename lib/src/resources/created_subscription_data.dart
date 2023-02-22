import 'package:iyzipay/src/enums/subscription/subscription_status.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'created_subscription_data.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatedSubscriptionData with JsonConvertible<CreatedSubscriptionData> {
  CreatedSubscriptionData({
    this.parentReferenceCode,
    this.referenceCode,
    this.pricingPlanReferenceCode,
    this.customerReferenceCode,
    this.subscriptionStatus,
    this.trialDays,
    this.trialStartDate,
    this.trialEndDate,
    this.canceledAt,
    this.createdDate,
    this.startDate,
    this.endDate,
  });

  final String? referenceCode;
  final String? parentReferenceCode;
  final String? pricingPlanReferenceCode;
  final String? customerReferenceCode;
  final SubscriptionStatus? subscriptionStatus;
  final int? trialDays;
  final String? trialStartDate;
  final String? trialEndDate;
  final String? canceledAt;
  final String? createdDate;
  final String? startDate;
  final String? endDate;

  @override
  CreatedSubscriptionData fromJson(JsonMap json) =>
      _$CreatedSubscriptionDataFromJson(json);

  @override
  JsonMap toJson() => _$CreatedSubscriptionDataToJson(this);
}
