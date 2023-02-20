import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_merchant_onboarding_verify_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubMerchantOnboardingVerifyResource extends IyzipayResource {
  const SubMerchantOnboardingVerifyResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.subMerchantKey,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? subMerchantKey;

  @override
  SubMerchantOnboardingVerifyResource fromJson(JsonMap json) =>
      _$SubMerchantOnboardingVerifyResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubMerchantOnboardingVerifyResourceToJson(this);
}
