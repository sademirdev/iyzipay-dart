import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_merchant_onboarding_verify_request.g.dart';

@JsonSerializable(includeIfNull: false)
class SubMerchantOnboardingVerifyRequest
    extends BaseRequest<SubMerchantOnboardingVerifyRequest> {
  const SubMerchantOnboardingVerifyRequest({
    super.locale,
    super.conversationId,
    required this.txId,
    required this.smsVerificationCode,
  });

  final String txId;
  final String smsVerificationCode;

  @override
  SubMerchantOnboardingVerifyRequest fromJson(JsonMap json) =>
      _$SubMerchantOnboardingVerifyRequestFromJson(json);

  @override
  JsonMap toJson() => _$SubMerchantOnboardingVerifyRequestToJson(this);
}
