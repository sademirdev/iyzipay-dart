import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_subscription_product_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateSubscriptionProductRequest
    extends BaseRequest<CreateSubscriptionProductRequest> {
  CreateSubscriptionProductRequest({
    super.locale,
    super.conversationId,
    required this.name,
    required this.description,
  });

  final String name;
  final String description;

  @override
  CreateSubscriptionProductRequest fromJson(JsonMap json) =>
      _$CreateSubscriptionProductRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateSubscriptionProductRequestToJson(this);
}
