import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/resources/subscription_order_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubscriptionOrder {
  const SubscriptionOrder();

  static const _slash = '/';

  static Future<SubscriptionOrderResource?> retrieve({
    required String subscriptionOrderReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.retrieveSubscriptionOrder.path +
        _slash +
        subscriptionOrderReferenceCode;
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionOrderResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }
}
