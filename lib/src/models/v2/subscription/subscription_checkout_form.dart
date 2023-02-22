import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/subscription/initialize_subscription_checkout_form_request.dart';
import 'package:iyzipay/src/resources/created_subscription_resource.dart';
import 'package:iyzipay/src/resources/subscription_checkout_form_initialize_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubscriptionCheckoutForm {
  const SubscriptionCheckoutForm();

  static const _slash = '/';

  static Future<SubscriptionCheckoutFormResource?> retrieve({
    required String subscriptionCheckoutFormToken,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionCheckoutForm.path +
        _slash +
        subscriptionCheckoutFormToken;
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionCheckoutFormResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionCheckoutFormInitializeResource?> initialize({
    required InitializeSubscriptionCheckoutFormRequest request,
    required Options options,
  }) async {
    final uri =
        options.baseUrl + NetworkPaths.initializeSubscriptionCheckoutForm.path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionCheckoutFormInitializeResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }
}
