import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_checkout_form_initialize_request.dart';
import 'package:iyzipay/src/resources/checkout_form_initialize_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class CheckoutFormInitialize extends CheckoutFormInitializeResource {
  const CheckoutFormInitialize();

  static Future<CheckoutFormInitialize?> create({
    required CreateCheckoutFormInitializeRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createCheckoutFormInitialize.path,
      request: request,
      responseModel: const CheckoutFormInitialize(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
