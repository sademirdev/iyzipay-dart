import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/enums/sub_merchant_type.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_sub_merchant_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateSubMerchantRequest extends BaseRequest<CreateSubMerchantRequest> {
  const CreateSubMerchantRequest({
    super.locale,
    super.conversationId,
    required this.name,
    required this.email,
    required this.gsmNumber,
    required this.address,
    required this.iban,
    this.taxOffice,
    this.contactName,
    this.contactSurname,
    this.legalCompanyTitle,
    this.swiftCode,
    required this.currency,
    this.identityNumber,
    this.taxNumber,
    this.subMerchantExternalId,
    this.subMerchantType,
    this.settlementDescriptionTemplate,
  });

  final String name;
  final String email;
  final String gsmNumber;
  final String address;
  final String iban;
  final String? taxOffice;
  final String? contactName;
  final String? contactSurname;
  final String? legalCompanyTitle;
  final String? swiftCode;
  final Currency currency;
  final String? identityNumber;
  final String? taxNumber;
  final String? subMerchantExternalId;
  final SubMerchantType? subMerchantType;
  final String? settlementDescriptionTemplate;

  @override
  CreateSubMerchantRequest fromJson(JsonMap json) =>
      _$CreateSubMerchantRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateSubMerchantRequestToJson(this);
}
