import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'checkout_form_initialize_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class CheckoutFormInitializeResource extends IyzipayResource {
  const CheckoutFormInitializeResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.token,
    this.checkoutFormContent,
    this.tokenExpireTime,
    this.paymentPageUrl,
    this.payWithIyzicoPageUrl,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? token;
  final String? checkoutFormContent;
  final int? tokenExpireTime;
  final String? paymentPageUrl;
  final String? payWithIyzicoPageUrl;

  @override
  CheckoutFormInitializeResource fromJson(JsonMap json) =>
      _$CheckoutFormInitializeResourceFromJson(json);

  @override
  JsonMap toJson() => _$CheckoutFormInitializeResourceToJson(this);
}
