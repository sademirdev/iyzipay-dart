import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_order_operation_request.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionOrderOperationRequest
    extends BaseRequest<SubscriptionOrderOperationRequest> {
  const SubscriptionOrderOperationRequest({
    super.locale,
    super.conversationId,
    required this.referenceCode,
  });

  final String referenceCode;

  @override
  SubscriptionOrderOperationRequest fromJson(JsonMap json) =>
      _$SubscriptionOrderOperationRequestFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionOrderOperationRequestToJson(this);
}
