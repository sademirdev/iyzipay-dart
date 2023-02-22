import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_upgrade_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionUpgradeData with JsonConvertible<SubscriptionUpgradeData> {
  SubscriptionUpgradeData(
    this.referenceCode,
    this.parentReferenceCode,
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
  );

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
  SubscriptionUpgradeData fromJson(JsonMap json) =>
      _$SubscriptionUpgradeDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionUpgradeDataToJson(this);
}
