import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_card_update_with_subscription_checkout_form_request.g.dart';

@JsonSerializable(includeIfNull: false)
class InitializeCardUpdateWithSubscriptionCheckoutFormRequest
    extends BaseRequest<
        InitializeCardUpdateWithSubscriptionCheckoutFormRequest> {
  InitializeCardUpdateWithSubscriptionCheckoutFormRequest({
    super.locale,
    super.conversationId,
    required this.subscriptionReferenceCode,
    required this.callbackUrl,
  });

  final String subscriptionReferenceCode;
  final String callbackUrl;

  @override
  InitializeCardUpdateWithSubscriptionCheckoutFormRequest fromJson(
    JsonMap json,
  ) =>
      _$InitializeCardUpdateWithSubscriptionCheckoutFormRequestFromJson(json);

  @override
  JsonMap toJson() =>
      _$InitializeCardUpdateWithSubscriptionCheckoutFormRequestToJson(this);
}
