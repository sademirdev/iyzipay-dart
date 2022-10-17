import 'package:dio/dio.dart' hide Response;
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/request.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:iyzipay/src/iyzipay_options.dart';
import 'package:iyzipay/src/utility/utils.dart';

/// An interface that specifies the features of all operations services
abstract class IyzipayService {
  /// Constructor of [IyzipayService]
  const IyzipayService(this.dio, this.options);

  /// The dio instance which is used all request
  final Dio dio;

  /// THe Configs for Iyzipay
  final IyzipayOptions options;

  /// Make http request with options.
  ///
  /// [requestModel] The request data
  /// [path] The endpoint path.
  /// [options] The request options.
  Future<R?> request<T extends Request<T>, R extends Response<R>>({
    required T requestModel,
    required R responseModel,
    required String path,
    required RequestType method,
  }) async {
    final body = requestModel.toJson();

    final header = Utils().generateHttpHeader(
      apiKey: options.apiKey,
      secretKey: options.secretKey,
      body: body,
    );

    final dioOptions = Options(
      headers: header,
      method: method.name,
    );

    try {
      final response = await dio.request<dynamic>(
        options.baseUrl + path,
        data: requestModel,
        options: dioOptions,
      );

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
