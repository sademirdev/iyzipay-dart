import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_subscription_request.g.dart';

@JsonSerializable(includeIfNull: false)
class SearchSubscriptionRequest extends BaseRequest<SearchSubscriptionRequest> {
  SearchSubscriptionRequest({
    super.locale,
    super.conversationId,
    required this.subscriptionReferenceCode,
    required this.parentReferenceCode,
    required this.customerReferenceCode,
    required this.pricingPlanReferenceCode,
    required this.subscriptionStatus,
    required this.startDate,
    required this.endDate,
    this.page,
    this.count,
  });

  final String subscriptionReferenceCode;
  final String parentReferenceCode;
  final String customerReferenceCode;
  final String pricingPlanReferenceCode;
  final SubscriptionStatus subscriptionStatus;
  final String startDate;
  final String endDate;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final int? page;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final int? count;

  @override
  SearchSubscriptionRequest fromJson(JsonMap json) =>
      _$SearchSubscriptionRequestFromJson(json);

  @override
  JsonMap toJson() => _$SearchSubscriptionRequestToJson(this);
}
