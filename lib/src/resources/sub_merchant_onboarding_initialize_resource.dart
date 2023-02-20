import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_merchant_onboarding_initialize_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class SubMerchantOnboardingInitializeResource extends IyzipayResource {
  const SubMerchantOnboardingInitializeResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.txId,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? txId;

  @override
  SubMerchantOnboardingInitializeResource fromJson(JsonMap json) =>
      _$SubMerchantOnboardingInitializeResourceFromJson(json);

  @override
  JsonMap toJson() => _$SubMerchantOnboardingInitializeResourceToJson(this);
}
