import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_disapproval_response.g.dart';

/// {@macro create_disapproval_request}

@JsonSerializable(includeIfNull: false)
class CreateDisapprovalResponse extends Response<CreateDisapprovalResponse> {
  /// {@macro create_disapproval_request}
  const CreateDisapprovalResponse({
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

  /// Converts [CreateDisapprovalResponse] to [Map]
  @override
  CreateDisapprovalResponse fromJson(Map<String, dynamic> json) => _$CreateDisapprovalResponseFromJson(json);
}
