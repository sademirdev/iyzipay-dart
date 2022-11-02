import 'package:iyzipay/src/enum/currency.dart';
import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_refund_request.g.dart';

/// {@template create_refund_request}
///
/// A payment collected through iyzico can be refunded 24/7 for 365 days.
/// If the refund is definitely reflected on the statement and the refund is
/// an installment transaction, the reflection of the refund on the card may
/// take a few days, although it varies from bank to bank.
/// The refund process works by breakdown, that is, it returns all or part of
/// a breakdown of the payment.
///
/// In order to make a refund, the id (paymentTransactionId) of the payment
/// breakdown and the amount to be refunded (price) must be sent.
/// If the refund is successful, the refunded amount (price) will be returned
/// from the service. The amount to be refunded (price) must be less than or
/// equal to the breakdown amount of the payment to be refunded
/// `(itemTransaction -> paidPrice)` and the remaining refundable amount.
/// As long as this rule is met, refunds can be made repeatedly.
///
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class CreateRefundRequest extends Request<CreateRefundRequest> {
  /// {@macro create_refund_request}
  const CreateRefundRequest({
    super.locale,
    super.conversationId,
    required this.paymentTransactionId,
    required this.price,
    required this.ip,
    this.currency,
  });

  /// The unique payment breakdown number given to the transaction by iyzico.
  final String paymentTransactionId;

  /// The amount to be refunded.
  ///
  /// {@macro utils_format_price_warming}
  final String price;

  /// The IP address to which the transaction was sent.
  final String ip;

  /// {@macro currency}
  final Currency? currency;

  /// Converts [Map] to [CreateRefundRequest]
  @override
  CreateRefundRequest fromJson(Map<String, dynamic> json) => _$CreateRefundRequestFromJson(json);

  /// Converts [CreateRefundRequest] to [Map]
  @override
  Map<String, dynamic> toJson() => _$CreateRefundRequestToJson(this);
}
