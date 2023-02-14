import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/requests/iyzi_link_save_request.dart';
import 'package:iyzipay/src/resources/iyzi_link_paging_resource.dart';
import 'package:iyzipay/src/resources/iyzi_link_resource.dart';
import 'package:iyzipay/src/resources/iyzi_link_save_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class IyziLink extends IyzipayResource {
  const IyziLink();

  static const _slash = '/';
  static const _questionMark = '?';
  static const _and = '&';

  static Future<IyziLinkSaveResource?> create({
    required IyziLinkSaveRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2iyziLinkProducts.path +
        getQueryParams(request);
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const IyziLinkSaveResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<IyziLinkSaveResource?> update({
    required String token,
    required IyziLinkSaveRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2iyziLinkProducts.path +
        _slash +
        token +
        getQueryParams(request);
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const IyziLinkSaveResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<IyziLinkPagingResource?> retrieveAll({
    required PagingRequest pagingRequest,
    required Options options,
  }) async {
    var queryParams = getQueryParams(pagingRequest);
    const iyziLinkQueryParam = 'productType=IYZILINK';

    queryParams = queryParams.isNotEmpty
        ? _questionMark + iyziLinkQueryParam
        : queryParams + _and + iyziLinkQueryParam;

    final uri =
        options.baseUrl + NetworkPaths.v2iyziLinkProducts.path + queryParams;
    return HttpClient.get(
      url: uri,
      responseModel: const IyziLinkPagingResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: pagingRequest.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<IyziLinkResource?> retrieve({
    required String token,
    required BaseRequest<dynamic> request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2iyziLinkProducts.path +
        _slash +
        token +
        getQueryParams(request);
    return HttpClient.get(
      url: uri,
      responseModel: const IyziLinkResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static Future<IyzipayResource?> delete({
    required String token,
    required BaseRequest<dynamic> request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.v2iyziLinkProducts.path +
        _slash +
        token +
        getQueryParams(request);
    return HttpClient.delete<IyzipayResource, EmptyRequest>(
      url: uri,
      request: null,
      responseModel: const IyzipayResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static String getQueryParams(BaseRequest<dynamic> request) {
    final strBuffer = StringBuffer('?conversationId=${request.conversationId}');

    if (request.locale?.value.isNotEmpty ?? false) {
      strBuffer.write('&locale=${request.locale!.value}');
    }

    if (request is PagingRequest) {
      if (request.page != null) {
        strBuffer.write('&page=${request.page}');
      }

      if (request.count != null) {
        strBuffer.write('&count=${request.count}');
      }
    }

    return strBuffer.toString();
  }
}
