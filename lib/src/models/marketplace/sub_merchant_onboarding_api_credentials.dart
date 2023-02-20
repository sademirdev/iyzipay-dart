import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_merchant_onboarding_api_credentials.g.dart';

@JsonSerializable(includeIfNull: false)
class SubMerchantOnboardingApiCredentials
    with JsonConvertible<SubMerchantOnboardingApiCredentials> {
  const SubMerchantOnboardingApiCredentials({
    required this.salt,
    required this.secretKey,
  });

  final String salt;
  final String secretKey;

  @override
  SubMerchantOnboardingApiCredentials fromJson(JsonMap json) =>
      _$SubMerchantOnboardingApiCredentialsFromJson(json);

  @override
  JsonMap toJson() => _$SubMerchantOnboardingApiCredentialsToJson(this);
}
