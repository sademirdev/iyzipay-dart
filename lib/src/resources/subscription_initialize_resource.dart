import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/created_subscription_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_initialize_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionInitializeResource extends IyzipayResource {
  const SubscriptionInitializeResource({
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
  SubscriptionInitializeResource fromJson(JsonMap json) =>
      _$SubscriptionInitializeResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionInitializeResourceToJson(this);
}
