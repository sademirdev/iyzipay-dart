class SubMerchantOnboardingCryptoEncryptException implements Exception {
  const SubMerchantOnboardingCryptoEncryptException({
    this.message,
    this.cause,
    this.stackTrace,
  });

  final String? message;
  final dynamic cause;
  final StackTrace? stackTrace;
}
