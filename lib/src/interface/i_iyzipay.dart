import 'package:dio/dio.dart';
import 'package:iyzipay/src/iyzipay_options.dart';

/// [IIyzipay] is an interface which specifies the features of Iyzipay
abstract class IIyzipay {
  /// Constructor of [IIyzipay]
  IIyzipay({required this.options})
      : dio = Dio(
          BaseOptions(
            baseUrl: options.baseUrl,
          ),
        );

  /// THe Configs for Iyzipay
  final IyzipayOptions options;

  /// The Dio instance that is used in all request
  final Dio dio;
}
