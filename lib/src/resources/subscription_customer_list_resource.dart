import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_customer_list_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_customer_list_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionCustomerListResource extends IyzipayResource {
  const SubscriptionCustomerListResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subscriptionCustomerListData,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'data')
  final SubscriptionCustomerListData? subscriptionCustomerListData;

  @override
  SubscriptionCustomerListResource fromJson(JsonMap json) =>
      _$SubscriptionCustomerListResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionCustomerListResourceToJson(this);
}
