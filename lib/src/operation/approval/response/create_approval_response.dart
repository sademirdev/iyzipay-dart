import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_approval_response.g.dart';

/// {@template approval_warning}
/// > Info: Approval for products cannot be made by iyzico. Since there is no such
/// function in the control panel, these approvals must be sent at the code level.
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class CreateApprovalResponse extends Response<CreateApprovalResponse> {
  /// {@macro approval_warning}
  const CreateApprovalResponse({
    super.status,
    super.locale,
    super.conversationId,
    super.systemTime,
    this.paymentTransactionId,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  /// The unique id of the product belonging to the payment breakdown determined by iyzico.
  final String? paymentTransactionId;

  /// Converts [Map] to [CreateApprovalResponse]
  @override
  CreateApprovalResponse fromJson(Map<String, dynamic> json) => _$CreateApprovalResponseFromJson(json);
}
