import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_approval_request.g.dart';

/// {@template create_approval_request}
///
/// In the marketplace solution, after the payment has passed through iyzico,
/// the money-protected pool is kept in the account until the member merchant
/// approves the breakdown/product included in the payment. The merchant can
/// cancel the payment within this period, refund the breakdown of the payment or,
/// if the product has reached the buyer and the transaction has been completed
/// without any problems, it can approve the product for the money transfer or
/// withdraw the product approval it has given.
///
/// In order to approve the product, the id (paymentTransactionId) of the payment
/// breakdown must be transmitted. The approved payment breakdown id
/// (paymentTransactionId) is returned from the service.
///
/// {@endtemplate}
///
/// {@macro approval_warning}

@JsonSerializable(includeIfNull: false)
class CreateApprovalRequest extends Request<CreateApprovalRequest> {
  /// {@macro create_approval_request}
  /// {@macro approval_warning}
  const CreateApprovalRequest({
    super.locale,
    super.conversationId,
    required this.paymentTransactionId,
  });

  /// The unique id of the product belonging to the payment breakdown determined by iyzico.
  final String paymentTransactionId;

  /// Converts [Map] to [CreateApprovalRequest]
  @override
  CreateApprovalRequest fromJson(Map<String, dynamic> json) => _$CreateApprovalRequestFromJson(json);

  /// Converts [CreateApprovalRequest] to [Map]
  @override
  Map<String, dynamic> toJson() => _$CreateApprovalRequestToJson(this);
}
