import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_approval_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateApprovalRequest extends BaseRequest<CreateApprovalRequest> {
  const CreateApprovalRequest({
    super.locale,
    super.conversationId,
    required this.paymentTransactionId,
  });

  final String paymentTransactionId;

  @override
  CreateApprovalRequest fromJson(JsonMap json) =>
      _$CreateApprovalRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateApprovalRequestToJson(this);
}
