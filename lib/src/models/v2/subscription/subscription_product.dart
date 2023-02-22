import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/paging_request.dart';
import 'package:iyzipay/src/requests/subscription/create_subscription_product_request.dart';
import 'package:iyzipay/src/requests/subscription/subscription_update_product_request.dart';
import 'package:iyzipay/src/resources/subscription_product_list_resource.dart';
import 'package:iyzipay/src/resources/subscription_product_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubscriptionProduct {
  const SubscriptionProduct();

  static const _slash = '/';

  static Future<SubscriptionProductResource?> retrieve({
    required String subscriptionProductReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionProducts.path +
        _slash +
        subscriptionProductReferenceCode;
    return HttpClient.get(
      url: uri,
      responseModel: SubscriptionProductResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionProductListResource?> retrieveAll({
    required PagingRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionProducts.path +
        getQueryParams(request);
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionProductListResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionProductResource?> create({
    required CreateSubscriptionProductRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl + NetworkPaths.v2subscriptionProducts.path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: SubscriptionProductResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionProductResource?> update({
    required SubscriptionUpdateProductRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionProducts.path +
        _slash +
        request.subscriptionProductReferenceCode;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: SubscriptionProductResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<IyzipayResource?> delete({
    required String subscriptionProductReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionProducts.path +
        _slash +
        subscriptionProductReferenceCode;
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
