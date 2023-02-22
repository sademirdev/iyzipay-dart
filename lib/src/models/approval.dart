import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_approval_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'approval.g.dart';

@JsonSerializable(includeIfNull: false)
class Approval extends IyzipayResource {
  const Approval({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.paymentTransactionId,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? paymentTransactionId;

  static Future<Approval?> create({
    required CreateApprovalRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createApproval.path,
      request: request,
      responseModel: const Approval(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  Approval fromJson(JsonMap json) => _$ApprovalFromJson(json);

  @override
  JsonMap toJson() => _$ApprovalToJson(this);
}
