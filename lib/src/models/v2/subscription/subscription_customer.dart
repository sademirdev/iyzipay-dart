import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/paging_request.dart';
import 'package:iyzipay/src/requests/subscription/create_subscription_customer_request.dart';
import 'package:iyzipay/src/requests/subscription/update_subscription_customer_request.dart';
import 'package:iyzipay/src/resources/subscription_customer_list_resource.dart';
import 'package:iyzipay/src/resources/subscription_customer_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubscriptionCustomer {
  const SubscriptionCustomer();

  static const _slash = '/';

  static Future<SubscriptionCustomerResource?> create({
    required CreateSubscriptionCustomerRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl + NetworkPaths.v2subscriptionCustomers.path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionCustomerResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionCustomerResource?> update({
    required UpdateSubscriptionCustomerRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionCustomers.path +
        _slash +
        request.subscriptionCustomerReferenceCode;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionCustomerResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionCustomerResource?> retrieve({
    required String subscriptionCustomerReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionCustomers.path +
        _slash +
        subscriptionCustomerReferenceCode;
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionCustomerResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionCustomerListResource?> retrieveAll({
    required PagingRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionCustomers.path +
        getQueryParams(request);
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionCustomerListResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<IyzipayResource?> delete({
    required String subscriptionCustomerReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionCustomers.path +
        _slash +
        subscriptionCustomerReferenceCode;
    return HttpClient.delete<IyzipayResource, EmptyRequest>(
      url: uri,
      request: null,
      responseModel: const IyzipayResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }

  static String getQueryParams(BaseRequest<dynamic> request) {
    final queryParams = StringBuffer()
      ..write('?conversationId=${request.conversationId}');

    if (request.locale?.value.isNotEmpty ?? false) {
      queryParams.write('&locale=${request.locale?.value}');
    }

    if (request is PagingRequest) {
      if (request.page != null) {
        queryParams.write('&page=${request.page}');
      }

      if (request.count != null) {
        queryParams.write('&count=${request.count}');
      }
    }

    return queryParams.toString();
  }
}
