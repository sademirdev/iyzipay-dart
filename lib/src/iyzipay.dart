import 'package:iyzipay/src/interface/i_iyzipay.dart';
import 'package:iyzipay/src/mixin/iyzipay_service_mixin.dart';

/// A powerful iyzipay api client for Dart,
/// Global configuration, all features. and iyzipay is
/// very easy to use.
///
/// You can create a iyzipay instance and config at this way:
///
///   ```dart
///     final iyzipay = Iyzipay(
///       options: IyzipayOptions(
///         baseUrl: 'https://sandbox-api.iyzipay.com', // for test
///         apiKey: '[YOUR_API_KEY]',
///         secretKey: '[YOUR_SECRET_KEY]',
///       ),
///     );
///   ```
class Iyzipay extends IIyzipay with IyzipayServiceMixin {
  /// Constructor of [Iyzipay]
  Iyzipay({required super.options});
}
