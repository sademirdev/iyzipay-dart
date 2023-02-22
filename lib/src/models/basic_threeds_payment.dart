import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_threeds_payment_request.dart';
import 'package:iyzipay/src/resources/basic_payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class BasicThreedsPayment extends BasicPaymentResource {
  const BasicThreedsPayment();

  static Future<BasicThreedsPayment?> create({
    required CreateThreedsPaymentRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createBasicThreedsPayment.path,
      request: request,
      responseModel: const BasicThreedsPayment(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
