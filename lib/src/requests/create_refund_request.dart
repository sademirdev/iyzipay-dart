import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/enums/refund_reason.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_refund_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateRefundRequest extends BaseRequest<CreateRefundRequest> {
  const CreateRefundRequest({
    super.locale,
    super.conversationId,
    required this.paymentTransactionId,
    required this.price,
    required this.ip,
    required this.currency,
    required this.reason,
    required this.description,
  });

  final String paymentTransactionId;
  final double price;
  final String ip;
  final Currency currency;
  final RefundReason reason;
  final String description;

  @override
  CreateRefundRequest fromJson(JsonMap json) =>
      _$CreateRefundRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateRefundRequestToJson(this);
}
