import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_refund_response.g.dart';

///
@JsonSerializable(includeIfNull: false)
class CreateRefundResponse extends Response<CreateRefundResponse> {
  ///
  const CreateRefundResponse({
    super.status,
    super.locale,
    super.conversationId,
    super.systemTime,
    this.price,
    this.currency,
    this.hostReference,
    this.paymentId,
    this.paymentTransactionId,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  /// The unique payment number given to the transaction by iyzico.
  final String? paymentId;

  /// The unique payment breakdown number given to the transaction by iyzico.
  final String? paymentTransactionId;

  /// Refunded amount.
  final double? price;

  /// The currency of the canceled payment.
  final Currency? currency;

  /// Return buyer reference (ARN). A value where consumers can track returns.
  final String? hostReference;

  /// Converts [Map] to [CreateRefundResponse]
  @override
  CreateRefundResponse fromJson(Map<String, dynamic> json) => _$CreateRefundResponseFromJson(json);
}
