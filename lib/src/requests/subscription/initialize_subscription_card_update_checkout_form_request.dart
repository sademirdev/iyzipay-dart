import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_subscription_card_update_checkout_form_request.g.dart';

@JsonSerializable(includeIfNull: false)
class InitializeSubscriptionCardUpdateCheckoutFormRequest
    extends BaseRequest<InitializeSubscriptionCardUpdateCheckoutFormRequest> {
  const InitializeSubscriptionCardUpdateCheckoutFormRequest({
    super.locale,
    super.conversationId,
    required this.customerReferenceCode,
    required this.callbackUrl,
  });

  final String customerReferenceCode;
  final String callbackUrl;

  @override
  InitializeSubscriptionCardUpdateCheckoutFormRequest fromJson(JsonMap json) =>
      _$InitializeSubscriptionCardUpdateCheckoutFormRequestFromJson(json);

  @override
  JsonMap toJson() =>
      _$InitializeSubscriptionCardUpdateCheckoutFormRequestToJson(this);
}
