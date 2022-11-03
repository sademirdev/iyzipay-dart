import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_payment_request.g.dart';

/// {@template retrieve_payment_request}
/// Details of a transaction recorded in iyzico can be queried later.
/// Payment inquiry service can be used for this.
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class RetrievePaymentRequest extends Request<RetrievePaymentRequest> {
  /// {@macro retrieve_payment_request}
  const RetrievePaymentRequest({
    super.locale,
    super.conversationId,
    required this.paymentId,
    required this.paymentConversationId,
    this.ip,
  });

  /// The unique payment number given to the transaction by iyzico.
  final String paymentId;

  /// The unique order number assigned to the transaction by the merchant.
  final String paymentConversationId;

  /// The IP address to which the transaction was sent.
  final String? ip;

  @override
  RetrievePaymentRequest fromJson(Map<String, dynamic> json) => _$RetrievePaymentRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RetrievePaymentRequestToJson(this);
}
