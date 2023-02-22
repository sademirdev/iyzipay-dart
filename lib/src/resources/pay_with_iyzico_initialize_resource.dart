import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pay_with_iyzico_initialize_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class PayWithIyzicoInitializeResource extends IyzipayResource {
  const PayWithIyzicoInitializeResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.token,
    this.checkoutFormContent,
    this.tokenExpireTime,
    this.payWithIyzicoPageUrl,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? token;
  final String? checkoutFormContent;
  final int? tokenExpireTime;
  final String? payWithIyzicoPageUrl;

  @override
  PayWithIyzicoInitializeResource fromJson(JsonMap json) =>
      _$PayWithIyzicoInitializeResourceFromJson(json);

  @override
  JsonMap toJson() => _$PayWithIyzicoInitializeResourceToJson(this);
}
