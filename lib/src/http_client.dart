import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';

class HttpClient {
  static Future<T?> get<T extends IyzipayResource>({
    required String url,
    required T responseModel,
    Map<String, String>? headers,
  }) async {
    try {
      final resp = await http.get(
        Uri.parse(url),
        headers: headers,
      );
      final json = jsonDecode(resp.body) as Map<String, dynamic>;
      return responseModel.fromJson(json) as T;
    } catch (e) {
      throw ServerException(message: e.runtimeType.toString());
    }
  }

  static Future<T?> post<T extends IyzipayResource, R extends BaseRequest<R>>({
    required String url,
    required Map<String, String> headers,
    required R? request,
    required T responseModel,
  }) async {
    try {
      final resp = await http.post(
        Uri.parse(url),
        headers: headers,
        body: request,
      );
      final json = jsonDecode(resp.body) as Map<String, dynamic>;
      return responseModel.fromJson(json) as T;
    } catch (e) {
      throw ServerException(message: e.runtimeType.toString());
    }
  }

  static Future<T?> put<T extends IyzipayResource, R extends BaseRequest<R>>({
    required String url,
    required Map<String, String> headers,
    required R request,
    required T responseModel,
  }) async {
    try {
      final resp = await http.put(
        Uri.parse(url),
        headers: headers,
        body: request,
      );
      final json = jsonDecode(resp.body) as Map<String, dynamic>;
      return responseModel.fromJson(json) as T;
    } catch (e) {
      throw ServerException(message: e.runtimeType.toString());
    }
  }

  static Future<T?>
      delete<T extends IyzipayResource, R extends BaseRequest<R>>({
    required String url,
    required Map<String, String> headers,
    required R? request,
    required T responseModel,
  }) async {
    try {
      final resp = await http.delete(
        Uri.parse(url),
        headers: headers,
        body: request,
      );
      final json = jsonDecode(resp.body) as Map<String, dynamic>;
      return responseModel.fromJson(json) as T;
    } catch (e) {
      throw ServerException(message: e.runtimeType.toString());
    }
  }
}

class ServerException implements Exception {
  const ServerException({
    this.message,
  });

  final String? message;
}
