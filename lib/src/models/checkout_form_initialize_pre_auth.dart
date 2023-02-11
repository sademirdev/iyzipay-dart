import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/models/checkout_form_initialize_resource.dart';
import 'package:iyzipay/src/requests/create_checkout_form_initialize_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class CheckoutFormInitializePreAuth extends CheckoutFormInitializeResource {
  const CheckoutFormInitializePreAuth();

  static Future<CheckoutFormInitializePreAuth?> create({
    required CreateCheckoutFormInitializeRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl +
          NetworkPaths.createCheckoutFormInitializePreAuth.path,
      request: request,
      responseModel: const CheckoutFormInitializePreAuth(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
