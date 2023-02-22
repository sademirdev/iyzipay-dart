import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_bkm_request.dart';
import 'package:iyzipay/src/resources/payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bkm.g.dart';

@JsonSerializable(includeIfNull: false)
class Bkm extends PaymentResource {
  const Bkm({
    super.price,
    super.paidPrice,
    super.currency,
    super.installment,
    super.paymentId,
    super.paymentStatus,
    super.fraudStatus,
    super.merchantCommissionRate,
    super.merchantCommissionRateAmount,
    super.iyziCommissionRateAmount,
    super.iyziCommissionFee,
    super.cardType,
    super.cardAssociation,
    super.cardFamily,
    super.cardToken,
    super.cardUserKey,
    super.binNumber,
    super.basketId,
    super.paymentItems,
    super.connectorName,
    super.authCode,
    super.phase,
    super.lastFourDigits,
    super.posOrderId,
    super.hostReference,
    super.iban,
    super.legalCompanyTitle,
    super.bankName,
    super.referenceCode,
    super.mdStatus,
    this.token,
    this.callbackUrl,
  });

  final String? token;
  final String? callbackUrl;

  static Future<Bkm?> retrieve({
    required RetrieveBkmRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveBkm.path,
      request: request,
      responseModel: const Bkm(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  Bkm fromJson(JsonMap json) => _$BkmFromJson(json);

  @override
  JsonMap toJson() => _$BkmToJson(this);
}
