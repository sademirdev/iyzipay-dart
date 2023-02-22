import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/paging_request.dart';
import 'package:iyzipay/src/requests/subscription/create_subscription_pricing_plan_request.dart';
import 'package:iyzipay/src/requests/subscription/update_subscription_pricing_plan_request.dart';
import 'package:iyzipay/src/resources/subscription_pricing_plan_list_resource.dart';
import 'package:iyzipay/src/resources/subscription_pricing_plan_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class SubscriptionPricingPlan {
  const SubscriptionPricingPlan();

  static const _slash = '/';
  static const _pricingPlan = '/pricing-plans';

  static Future<SubscriptionPricingPlanResource?> create({
    required CreateSubscriptionPricingPlanRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionProducts.path +
        _slash +
        request.subscriptionProductReferenceCode +
        _pricingPlan;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionPricingPlanResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionPricingPlanResource?> retrieve({
    required String subscriptionPricingPlanReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionPricingPlans.path +
        _slash +
        subscriptionPricingPlanReferenceCode;
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionPricingPlanResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: const EmptyRequest().toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionPricingPlanListResource?> retrieveAll({
    required String subscriptionPricingPlanReferenceCode,
    required PagingRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionProducts.path +
        _slash +
        subscriptionPricingPlanReferenceCode +
        _pricingPlan +
        _slash +
        getQueryParams(request);
    return HttpClient.get(
      url: uri,
      responseModel: const SubscriptionPricingPlanListResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<SubscriptionPricingPlanResource?> update({
    required UpdateSubscriptionPricingPlanRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionPricingPlans.path +
        _slash +
        request.subscriptionPricingPlanReferenceCode;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const SubscriptionPricingPlanResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<IyzipayResource?> delete({
    required String subscriptionPricingPlanReferenceCode,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2subscriptionPricingPlans.path +
        _slash +
        subscriptionPricingPlanReferenceCode;
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
