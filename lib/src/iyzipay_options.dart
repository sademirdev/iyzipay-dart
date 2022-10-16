/// The common config for the Iyzipay instance.
/// `iyzipay.options` is a instance of [IyzipayOptions]
class IyzipayOptions {
  /// Constructor of [IyzipayOptions]
  IyzipayOptions({
    required this.baseUrl,
    required this.apiKey,
    required this.secretKey,
  });

  /// Request base url, if you are in test use https://sandbox-api.iyzipay.com.
  final String baseUrl;

  /// The api key which Iyzico provides for all users
  final String apiKey;

  /// The secret key which Iyzico provides for all users
  final String secretKey;
}
