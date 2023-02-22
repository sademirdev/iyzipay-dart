import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionResource extends IyzipayResource {
  const SubscriptionResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionData? subscriptionData;

  @override
  SubscriptionResource fromJson(JsonMap json) =>
      _$SubscriptionResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionResourceToJson(this);
}
