import 'package:iyzipay/src/enums/iyzipay_locale.dart';
import 'package:iyzipay/src/json_convertible.dart';

abstract class BaseRequest<T> with JsonConvertible<T> {
  const BaseRequest({
    this.locale,
    this.conversationId,
  });

  /// The locale value specified in the request is returned, its default value is `tr`.
  final IyzipayLocale? locale;

  /// A value that you can send and receive during the request can be used to match the request/response.
  final String? conversationId;
}
