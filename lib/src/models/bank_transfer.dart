import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_transfer.g.dart';

@JsonSerializable(includeIfNull: false)
class BankTransfer with JsonConvertible<BankTransfer> {
  const BankTransfer({
    required this.subMerchantKey,
    required this.iban,
    required this.contactName,
    required this.contactSurname,
    required this.legalCompanyTitle,
    required this.marketplaceSubMerchantType,
  });

  final String subMerchantKey;
  final String iban;
  final String contactName;
  final String contactSurname;
  final String legalCompanyTitle;
  @JsonKey(name: 'marketplaceSubmerchantType')
  final String marketplaceSubMerchantType;

  @override
  BankTransfer fromJson(JsonMap json) => _$BankTransferFromJson(json);

  @override
  JsonMap toJson() => _$BankTransferToJson(this);
}
