import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_customer_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_customer_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionCustomerResource extends IyzipayResource {
  const SubscriptionCustomerResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionCustomerData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionCustomerData? subscriptionCustomerData;

  @override
  SubscriptionCustomerResource fromJson(JsonMap json) =>
      _$SubscriptionCustomerResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionCustomerResourceToJson(this);
}
