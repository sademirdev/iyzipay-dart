import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_update_product_request.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionUpdateProductRequest
    extends BaseRequest<SubscriptionUpdateProductRequest> {
  const SubscriptionUpdateProductRequest({
    required this.subscriptionProductReferenceCode,
    required this.name,
    required this.description,
  });

  // Note: subscriptionProductReferenceCode may cause problem
  final String subscriptionProductReferenceCode;
  final String name;
  final String description;

  @override
  SubscriptionUpdateProductRequest fromJson(JsonMap json) =>
      _$SubscriptionUpdateProductRequestFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionUpdateProductRequestToJson(this);
}
