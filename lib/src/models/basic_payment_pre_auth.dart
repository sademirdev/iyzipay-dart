import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_basic_payment_request.dart';
import 'package:iyzipay/src/resources/basic_payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class BasicPaymentPreAuth extends BasicPaymentResource {
  const BasicPaymentPreAuth();

  static Future<BasicPaymentPreAuth?> create({
    required CreateBasicPaymentRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createBasicPaymentPreAuth.path,
      request: request,
      responseModel: const BasicPaymentPreAuth(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
