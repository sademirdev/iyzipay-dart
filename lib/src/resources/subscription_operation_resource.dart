import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_order_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_operation_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionOperationResource extends IyzipayResource {
  const SubscriptionOperationResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionOrderData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionOrderData? subscriptionOrderData;

  @override
  SubscriptionOperationResource fromJson(JsonMap json) =>
      _$SubscriptionOperationResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionOperationResourceToJson(this);
}
