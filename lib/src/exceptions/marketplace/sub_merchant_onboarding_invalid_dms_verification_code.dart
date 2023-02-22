class SubMerchantOnboardingInvalidSmsVerificationCode implements Exception {
  const SubMerchantOnboardingInvalidSmsVerificationCode({this.message});

  final String? message;
}
