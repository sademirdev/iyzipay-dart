import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_merchant_onboarding_initialize_request.g.dart';

@JsonSerializable(includeIfNull: false)
class SubMerchantOnboardingInitializeRequest
    extends BaseRequest<SubMerchantOnboardingInitializeRequest> {
  const SubMerchantOnboardingInitializeRequest({
    super.locale,
    super.conversationId,
    required this.name,
    required this.surname,
    required this.email,
    required this.gsmNumber,
    required this.tckNo,
    required this.birthDate,
    required this.address,
    required this.externalId,
  });

  final String name;
  final String surname;
  final String email;
  final String gsmNumber;
  final String tckNo;
  final String birthDate;
  final String address;
  final String externalId;

  @override
  SubMerchantOnboardingInitializeRequest fromJson(JsonMap json) =>
      _$SubMerchantOnboardingInitializeRequestFromJson(json);

  @override
  JsonMap toJson() => _$SubMerchantOnboardingInitializeRequestToJson(this);
}
