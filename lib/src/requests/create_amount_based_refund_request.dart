import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_amount_based_refund_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateAmountBasedRefundRequest
    extends BaseRequest<CreateAmountBasedRefundRequest> {
  const CreateAmountBasedRefundRequest({
    super.locale,
    super.conversationId,
    required this.paymentId,
    required this.price,
    required this.ip,
  });

  final String paymentId;
  final String price;
  final String ip;

  @override
  CreateAmountBasedRefundRequest fromJson(JsonMap json) =>
      _$CreateAmountBasedRefundRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateAmountBasedRefundRequestToJson(this);
}
