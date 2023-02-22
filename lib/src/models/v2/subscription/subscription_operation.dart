import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/subscription/subscription_order_operation_request.dart';
import 'package:iyzipay/src/requests/subscription/upgrade_subscription_request.dart';
import 'package:iyzipay/src/resources/subscription_operation_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubscriptionOperation {
  const SubscriptionOperation();

  static const _slash = '/';
  static const _cancel = 'cancel';
  static const _activate = 'activate';
  static const _upgrade = 'upgrade';

  static Future<SubscriptionOperationResource?> cancel({
    required String subscriptionReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptions.path +
        _slash +
        subscriptionReferenceCode +
        _slash +
        _cancel;
    return HttpClient.post<SubscriptionOperationResource, EmptyRequest>(
      url: uri,
      request: null,
      responseModel: const SubscriptionOperationResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionOperationResource?> activate({
    required String subscriptionReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptions.path +
        _slash +
        subscriptionReferenceCode +
        _slash +
        _activate;
    return HttpClient.post<SubscriptionOperationResource, EmptyRequest>(
      url: uri,
      request: null,
      responseModel: const SubscriptionOperationResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionOperationResource?> upgrade({
    required UpgradeSubscriptionRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptions.path +
        _slash +
        request.subscriptionReferenceCode +
        _slash +
        _upgrade;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionOperationResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionOperationResource?> retryPayment({
    required SubscriptionOrderOperationRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl + NetworkPaths.retrySubscriptionOperation.path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionOperationResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }
}
