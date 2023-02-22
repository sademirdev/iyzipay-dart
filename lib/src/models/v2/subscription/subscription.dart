import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/subscription/initialize_subscription_request.dart';
import 'package:iyzipay/src/requests/subscription/initialize_subscription_with_existing_customer_request.dart';
import 'package:iyzipay/src/requests/subscription/search_subscription_request.dart';
import 'package:iyzipay/src/resources/subscription_initialize_resource.dart';
import 'package:iyzipay/src/resources/subscription_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class Subscription {
  const Subscription();

  static const _slash = '/';

  static Future<SubscriptionResource?> retrieve({
    required String subscriptionReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptions.path +
        _slash +
        subscriptionReferenceCode;
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionInitializeResource?> initialize({
    required InitializeSubscriptionRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl + NetworkPaths.initializeSubscription.path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionInitializeResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionInitializeResource?>
      initializeWithExistingCustomer({
    required InitializeSubscriptionWithExistingCustomerRequest request,
    required Options options,
  }) async {
    final uri =
        options.baseUrl + NetworkPaths.initializeSubscriptionWithCustomer.path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionInitializeResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionResource?> search({
    required SearchSubscriptionRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptions.path +
        _getQueryParams(request);
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static String _getQueryParams(SearchSubscriptionRequest request) {
    final queryParams = StringBuffer()
      ..write('?conversationId=${request.conversationId}');

    if (request.locale?.value.isNotEmpty ?? false) {
      queryParams.write('&locale=${request.locale!.value}');
    }

    if (request.pricingPlanReferenceCode.isNotEmpty) {
      queryParams.write(
        '&pricingPlanReferenceCode=${request.pricingPlanReferenceCode}',
      );
    }

    if (request.subscriptionReferenceCode.isNotEmpty) {
      queryParams.write(
        '&subscriptionReferenceCode=${request.subscriptionReferenceCode}',
      );
    }

    if (request.parentReferenceCode.isNotEmpty) {
      queryParams.write('&parentReferenceCode=${request.parentReferenceCode}');
    }

    if (request.customerReferenceCode.isNotEmpty) {
      queryParams
          .write('&customerReferenceCode=${request.customerReferenceCode}');
    }

    queryParams.write('&subscriptionStatus=${request.subscriptionStatus}');

    if (request.startDate.isNotEmpty) {
      queryParams.write('&startDate=${request.startDate}');
    }

    if (request.endDate.isNotEmpty) {
      queryParams.write('&endDate=${request.endDate}');
    }

    if (request.page != null) {
      queryParams.write('&page=${request.page}');
    }

    if (request.count != null) {
      queryParams.write('&count=${request.count}');
    }

    return queryParams.toString();
  }
}
