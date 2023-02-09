import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_payment_post_auth_request.dart';
import 'package:iyzipay/src/resources/basic_payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class BasicPaymentPostAuth extends BasicPaymentResource {
  const BasicPaymentPostAuth();

  static Future<BasicPaymentPostAuth?> create({
    required CreatePaymentPostAuthRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createBasicPaymentPostAuth.path,
      request: request,
      responseModel: const BasicPaymentPostAuth(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
