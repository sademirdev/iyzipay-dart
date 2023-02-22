import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_checkout_form_initialize_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionCheckoutFormInitializeResource extends IyzipayResource {
  const SubscriptionCheckoutFormInitializeResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.token,
    this.checkoutFormContent,
    this.tokenExpireTime,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? token;
  final String? checkoutFormContent;
  final int? tokenExpireTime;

  @override
  SubscriptionCheckoutFormInitializeResource fromJson(JsonMap json) =>
      _$SubscriptionCheckoutFormInitializeResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionCheckoutFormInitializeResourceToJson(this);
}
