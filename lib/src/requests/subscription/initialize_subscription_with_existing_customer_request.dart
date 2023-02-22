import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_subscription_with_existing_customer_request.g.dart';

@JsonSerializable(includeIfNull: false)
class InitializeSubscriptionWithExistingCustomerRequest
    extends BaseRequest<InitializeSubscriptionWithExistingCustomerRequest> {
  InitializeSubscriptionWithExistingCustomerRequest({
    super.locale,
    super.conversationId,
    required this.pricingPlanReferenceCode,
    required this.customerReferenceCode,
    required this.subscriptionInitialStatus,
  });

  final String pricingPlanReferenceCode;
  final String customerReferenceCode;
  final String subscriptionInitialStatus;

  @override
  InitializeSubscriptionWithExistingCustomerRequest fromJson(JsonMap json) =>
      _$InitializeSubscriptionWithExistingCustomerRequestFromJson(json);

  @override
  JsonMap toJson() =>
      _$InitializeSubscriptionWithExistingCustomerRequestToJson(this);
}
