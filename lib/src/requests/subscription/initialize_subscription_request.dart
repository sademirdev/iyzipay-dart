import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/v2/subscription/checkout_form_customer.dart';
import 'package:iyzipay/src/resources/subscription_card_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_subscription_request.g.dart';

@JsonSerializable(includeIfNull: false)
class InitializeSubscriptionRequest
    extends BaseRequest<InitializeSubscriptionRequest> {
  InitializeSubscriptionRequest({
    super.locale,
    super.conversationId,
    required this.paymentCard,
    required this.customer,
    required this.pricingPlanReferenceCode,
    required this.subscriptionInitialStatus,
  });

  final SubscriptionCardData paymentCard;
  final CheckoutFormCustomer customer;
  final String pricingPlanReferenceCode;
  final String subscriptionInitialStatus;

  @override
  InitializeSubscriptionRequest fromJson(JsonMap json) =>
      _$InitializeSubscriptionRequestFromJson(json);

  @override
  JsonMap toJson() => _$InitializeSubscriptionRequestToJson(this);
}
