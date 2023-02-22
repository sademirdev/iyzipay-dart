import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_payment_post_auth_request.dart';
import 'package:iyzipay/src/resources/payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class PaymentPostAuth extends PaymentResource {
  const PaymentPostAuth();

  static Future<PaymentPostAuth?> create({
    required CreatePaymentPostAuthRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createPaymentPostAuth.path,
      request: request,
      responseModel: const PaymentPostAuth(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
