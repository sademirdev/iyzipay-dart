import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/v2/subscription/checkout_form_customer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_subscription_checkout_form_request.g.dart';

@JsonSerializable(includeIfNull: false)
class InitializeSubscriptionCheckoutFormRequest
    extends BaseRequest<InitializeSubscriptionCheckoutFormRequest> {
  InitializeSubscriptionCheckoutFormRequest({
    required this.callbackUrl,
    required this.pricingPlanReferenceCode,
    required this.subscriptionInitialStatus,
    required this.customer,
  });

  final String callbackUrl;
  final String pricingPlanReferenceCode;
  final String subscriptionInitialStatus;
  final CheckoutFormCustomer customer;

  @override
  InitializeSubscriptionCheckoutFormRequest fromJson(JsonMap json) =>
      _$InitializeSubscriptionCheckoutFormRequestFromJson(json);

  @override
  JsonMap toJson() => _$InitializeSubscriptionCheckoutFormRequestToJson(this);
}
