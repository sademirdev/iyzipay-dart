import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_pay_with_iyzico_request.dart';
import 'package:iyzipay/src/resources/payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pay_with_iyzico.g.dart';

@JsonSerializable(includeIfNull: false)
class PayWithIyzico extends PaymentResource {
  const PayWithIyzico({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
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
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? token;
  final String? callbackUrl;

  static Future<PayWithIyzico?> retrieve({
    required RetrievePayWithIyzicoRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrievePayWithIyzico.path,
      request: request,
      responseModel: const PayWithIyzico(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  PayWithIyzico fromJson(JsonMap json) => _$PayWithIyzicoFromJson(json);

  @override
  JsonMap toJson() => _$PayWithIyzicoToJson(this);
}
