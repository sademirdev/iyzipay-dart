import 'package:iyzipay/src/enums/subscription/subscription_status.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_order_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionData with JsonConvertible<SubscriptionData> {
  SubscriptionData({
    this.referenceCode,
    this.parentReferenceCode,
    this.pricingPlanName,
    this.pricingPlanReferenceCode,
    this.productName,
    this.productReferenceCode,
    this.customerEmail,
    this.customerReferenceCode,
    this.customerGsmNumber,
    this.paymentId,
    this.subscriptionStatus,
    this.trialDays,
    this.trialStartDate,
    this.trialEndDate,
    this.canceledAt,
    this.createdDate,
    this.startDate,
    this.endDate,
    this.subscriptionOrders,
  });

  final String? referenceCode;
  final String? parentReferenceCode;
  final String? pricingPlanName;
  final String? pricingPlanReferenceCode;
  final String? productName;
  final String? productReferenceCode;
  final String? customerEmail;
  final String? customerReferenceCode;
  final String? customerGsmNumber;
  final int? paymentId;
  final SubscriptionStatus? subscriptionStatus;
  final int? trialDays;
  final String? trialStartDate;
  final String? trialEndDate;
  final String? canceledAt;
  final String? createdDate;
  final String? startDate;
  final String? endDate;
  @JsonKey(name: 'orders')
  final List<SubscriptionOrderData>? subscriptionOrders;

  @override
  SubscriptionData fromJson(JsonMap json) => _$SubscriptionDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionDataToJson(this);
}
