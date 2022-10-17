import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';

/// An interface which specifies the features of all responses
abstract class Response<T> {
  /// Constructor of [Response]
  Response({
    this.status,
    this.locale,
    this.systemTime,
    this.conversationId,
    this.errorCode,
    this.errorMessage,
  });

  /// Response status
  final IyzipayStatus? status;

  /// Response language
  final IyzipayLocale? locale;

  /// The system time
  final int? systemTime;

  /// Response conversation id, which is given on request
  final String? conversationId;

  /// Iyzico error code, it is null if status is [IyzipayStatus.success]
  final String? errorCode;

  /// Iyzico error message, it is null if status is [IyzipayStatus.success]
  final String? errorMessage;

  /// Generates Response model from a json
  T fromJson(Map<String, dynamic> json);
}
