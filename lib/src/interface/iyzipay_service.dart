import 'package:dio/dio.dart' hide Response;
import 'package:iyzipay/src/interface/request.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:iyzipay/src/iyzipay_options.dart';
import 'package:iyzipay/src/utility/utils.dart';
import 'package:meta/meta.dart';

/// {@template iyzipay_service}
/// An interface that specifies the features of all operations services
/// {@endtemplate}
@immutable
abstract class IyzipayService {
  /// {@macro iyzipay_service}
  const IyzipayService(this.dio, this.options);

  /// The dio instance which is used all request
  final Dio dio;

  /// THe Configs for Iyzipay
  final IyzipayOptions options;

  /// Make http request with options.
  ///
  /// [requestModel] The request data
  /// [path] The endpoint path.
  @internal
  Future<R?> requestMethod<T extends Request<T>, R extends IResponse<R>>({
    required T requestModel,
    required R responseModel,
    required String path,
    required String method,
  }) async {
    final body = requestModel.toJson();

    final header = Utils().generateHttpHeader(
      apiKey: options.apiKey,
      secretKey: options.secretKey,
      body: body,
    );

    final dioOptions = Options(
      headers: header,
      method: method,
    );

    try {
      final response = await dio.request<dynamic>(
        options.baseUrl + path,
        data: requestModel,
        options: dioOptions,
      );

      print(response.data);

      final data = response.data;
      if (data is Map<String, dynamic>) return responseModel.fromJson(data);
      return null;
    } on DioError catch (e) {
      final data = e.response?.data;
      if (data is Map<String, dynamic>) return responseModel.fromJson(data);
      return null;
    }
  }
}
