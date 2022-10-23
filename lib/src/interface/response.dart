import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'response.g.dart';

///
@immutable
@JsonSerializable()
class Response<T> extends IResponse<T> {
  ///
  const Response({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @override
  T fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json) as T;
}

/// {@template response}
/// An interface which specifies the features of all responses
/// {@endtemplate}
@immutable
abstract class IResponse<T> {
  /// {@macro response}
  const IResponse({
    this.status,
    this.locale,
    this.systemTime,
    this.conversationId,
    this.errorCode,
    this.errorMessage,
    this.errorGroup,
  });

  /// Reports the result of the request.
  ///
  /// If the operation is successful, it returns `success`,
  /// if it is wrong, it returns `failure`.
  final IyzipayStatus? status;

  /// The locale value specified in the request is returned, its default value is `tr`.
  final IyzipayLocale? locale;

  /// The current unix timestamp value of the returned result.
  final int? systemTime;

  /// A value that you can send and receive during the request can be used to match the request/response.
  ///
  /// If it was sent during the request, it is returned exactly as it is in the result.
  final String? conversationId;

  /// If the operation is faulty, this is the code specified for the error.
  ///
  /// Iyzico error code, it is null if status is [IyzipayStatus.success]
  final String? errorCode;

  /// If the operation is faulty, this is the message specified about the error.
  /// It provides language support according to the locale parameter.
  ///
  /// Iyzico error message, it is null if status is [IyzipayStatus.success]
  final String? errorMessage;

  /// If the operation is faulty, this is the group specified for the error.
  final String? errorGroup;

  /// Converts [T] to [Map]
  T fromJson(Map<String, dynamic> json);
}
