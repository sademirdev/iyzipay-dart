import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_checkout_form_request.dart';
import 'package:iyzipay/src/resources/payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'checkout_form.g.dart';

@JsonSerializable(includeIfNull: false)
class CheckoutForm extends PaymentResource {
  const CheckoutForm({
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

  static Future<CheckoutForm?> retrieve({
    required RetrieveCheckoutFormRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveCheckoutForm.path,
      request: request,
      responseModel: const CheckoutForm(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  CheckoutForm fromJson(JsonMap json) => _$CheckoutFormFromJson(json);

  @override
  JsonMap toJson() => _$CheckoutFormToJson(this);
}
