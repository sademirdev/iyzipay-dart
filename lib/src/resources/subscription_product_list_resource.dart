import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_product_list_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_product_list_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionProductListResource extends IyzipayResource {
  const SubscriptionProductListResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionProductListData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionProductListData? subscriptionProductListData;

  @override
  SubscriptionProductListResource fromJson(JsonMap json) =>
      _$SubscriptionProductListResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionProductListResourceToJson(this);
}
