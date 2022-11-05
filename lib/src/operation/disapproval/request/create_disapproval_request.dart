import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_disapproval_request.g.dart';

/// {@template create_disapproval_request}
/// In order to withdraw the approval given to the product, the id (paymentTransactionId)
/// of the payment breakdown must be transmitted. The payment breakdown id
/// (paymentTransactionId) whose confirmation has been withdrawn is returned from the service.
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class CreateDisapprovalRequest extends Request<CreateDisapprovalRequest> {
  /// {@macro create_disapproval_request}
  const CreateDisapprovalRequest({
    super.locale,
    super.conversationId,
    required this.paymentTransactionId,
  });

  /// The unique id of the product belonging to the payment breakdown determined by iyzico.
  final String paymentTransactionId;

  /// Converts [CreateDisapprovalRequest] to [Map]
  @override
  CreateDisapprovalRequest fromJson(Map<String, dynamic> json) => _$CreateDisapprovalRequestFromJson(json);

  /// Converts [Map] to [CreateDisapprovalRequest]
  @override
  Map<String, dynamic> toJson() => _$CreateDisapprovalRequestToJson(this);
}
