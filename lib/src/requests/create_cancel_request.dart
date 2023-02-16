import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/refund_reason.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cancel_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateCancelRequest extends BaseRequest<CreateCancelRequest> {
  const CreateCancelRequest({
    super.locale,
    super.conversationId,
    required this.paymentId,
    required this.ip,
    this.reason,
    this.description,
  });

  final String paymentId;
  final String ip;
  final RefundReason? reason;
  final String? description;

  @override
  CreateCancelRequest fromJson(JsonMap json) =>
      _$CreateCancelRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateCancelRequestToJson(this);
}
