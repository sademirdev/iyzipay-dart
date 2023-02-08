import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/requests/retrieve_bkm_request.dart';
import 'package:iyzipay/src/resources/basic_payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basic_bkm.g.dart';

@JsonSerializable(includeIfNull: false)
class BasicBkm extends BasicPaymentResource {
  const BasicBkm({
    super.price,
    super.paidPrice,
    super.installment,
    super.currency,
    super.paymentId,
    super.merchantCommissionRate,
    super.merchantCommissionRateAmount,
    super.iyziCommissionFee,
    super.cardType,
    super.cardAssociation,
    super.cardFamily,
    super.cardToken,
    super.cardUserKey,
    super.binNumber,
    super.paymentTransactionId,
    super.authCode,
    super.connectorName,
    super.phase,
    this.token,
    this.callbackUrl,
    this.paymentStatus,
  });

  final String? token;
  final String? callbackUrl;
  final String? paymentStatus;

  static Future<BasicBkm?> retrieve({
    required RetrieveBkmRequest request,
    required Options options,
  }) async {
    return HttpClient.post<BasicBkm, RetrieveBkmRequest>(
      url: options.baseUrl + NetworkPaths.retrieveBasicBkm.path,
      request: request,
      responseModel: const BasicBkm(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  BasicBkm fromJson(JsonMap json) => _$BasicBkmFromJson(json);

  @override
  JsonMap toJson() => _$BasicBkmToJson(this);
}
