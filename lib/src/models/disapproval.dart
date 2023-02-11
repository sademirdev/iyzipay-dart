import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/requests/create_approval_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'disapproval.g.dart';

@JsonSerializable(includeIfNull: false)
class Disapproval extends IyzipayResource {
  const Disapproval({
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

  static Future<Disapproval?> create({
    required CreateApprovalRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createDisapproval.path,
      request: request,
      responseModel: const Disapproval(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  Disapproval fromJson(JsonMap json) => _$DisapprovalFromJson(json);

  @override
  JsonMap toJson() => _$DisapprovalToJson(this);
}
