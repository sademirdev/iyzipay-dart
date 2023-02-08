/// The common config for the Iyzipay instance.
class Options {
  const Options({
    required this.baseUrl,
    required this.apiKey,
    required this.secretKey,
  });

  /// Request base url, if you are in test use https://sandbox-api.iyzipay.com.
  final String baseUrl;

  /// The api key which Iyzico provides
  final String apiKey;

  /// The secret key which Iyzico provides
  final String secretKey;
}
