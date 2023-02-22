import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/subscription/initialize_card_update_with_subscription_checkout_form_request.dart';
import 'package:iyzipay/src/requests/subscription/initialize_subscription_card_update_checkout_form_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubscriptionCardUpdateCheckoutFormInitialize extends IyzipayResource {
  const SubscriptionCardUpdateCheckoutFormInitialize({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.token,
    this.checkoutFormContent,
    this.tokenExpireTime,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? token;
  final String? checkoutFormContent;
  final int? tokenExpireTime;

  static Future<SubscriptionCardUpdateCheckoutFormInitialize?> create({
    required InitializeSubscriptionCardUpdateCheckoutFormRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.createSubscriptionCardUpdateCheckoutFormInitialize.path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionCardUpdateCheckoutFormInitialize(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionCardUpdateCheckoutFormInitialize?>
      createWithSubscription({
    required InitializeCardUpdateWithSubscriptionCheckoutFormRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths
            .createWithSubscriptionSubscriptionCardUpdateCheckoutFormInitialize
            .path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionCardUpdateCheckoutFormInitialize(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }
}
