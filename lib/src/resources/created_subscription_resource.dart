import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/created_subscription_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'created_subscription_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionCheckoutFormResource extends IyzipayResource {
  const SubscriptionCheckoutFormResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.createdSubscriptionData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final CreatedSubscriptionData? createdSubscriptionData;

  @override
  SubscriptionCheckoutFormResource fromJson(JsonMap json) =>
      _$SubscriptionCheckoutFormResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionCheckoutFormResourceToJson(this);
}
