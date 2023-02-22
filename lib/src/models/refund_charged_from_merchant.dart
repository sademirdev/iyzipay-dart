import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_refund_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refund_charged_from_merchant.g.dart';

@JsonSerializable(includeIfNull: false)
class RefundChargedFromMerchant extends IyzipayResource {
  const RefundChargedFromMerchant({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.paymentId,
    this.paymentTransactionId,
    this.price,
    this.authCode,
    this.hostReference,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? paymentId;
  final String? paymentTransactionId;
  final double? price;
  final double? authCode;
  final String? hostReference;

  static Future<RefundChargedFromMerchant?> create({
    required CreateRefundRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createRefundChargedFromMerchant.path,
      request: request,
      responseModel: const RefundChargedFromMerchant(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  RefundChargedFromMerchant fromJson(JsonMap json) =>
      _$RefundChargedFromMerchantFromJson(json);

  @override
  JsonMap toJson() => _$RefundChargedFromMerchantToJson(this);
}
