import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/requests/create_amount_based_refund_request.dart';
import 'package:iyzipay/src/requests/create_refund_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refund.g.dart';

@JsonSerializable(includeIfNull: false)
class Refund extends IyzipayResource {
  const Refund({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.paymentId,
    this.paymentTransactionId,
    this.price,
    this.currency,
    this.connectorName,
    this.authCode,
    this.hostReference,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? paymentId;
  final String? paymentTransactionId;
  final double? price;
  final Currency? currency;
  final String? connectorName;
  final String? authCode;
  final String? hostReference;

  static Future<Refund?> create({
    required CreateRefundRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createRefund.path,
      request: request,
      responseModel: const Refund(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<Refund?> createAmountBasedRefundRequest({
    required CreateAmountBasedRefundRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createAmountBasedRefundRequest.path,
      request: request,
      responseModel: const Refund(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  Refund fromJson(JsonMap json) => _$RefundFromJson(json);

  @override
  JsonMap toJson() => _$RefundToJson(this);
}
