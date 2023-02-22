import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_product_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_product_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionProductResource extends IyzipayResource {
  SubscriptionProductResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionProductData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionProductData? subscriptionProductData;

  @override
  SubscriptionProductResource fromJson(JsonMap json) =>
      _$SubscriptionProductResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionProductResourceToJson(this);
}
