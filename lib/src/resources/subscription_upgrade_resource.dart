import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_upgrade_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_upgrade_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionUpgradeResource extends IyzipayResource {
  const SubscriptionUpgradeResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionUpgradeData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionUpgradeData? subscriptionUpgradeData;

  @override
  SubscriptionUpgradeResource fromJson(JsonMap json) =>
      _$SubscriptionUpgradeResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionUpgradeResourceToJson(this);
}
