import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/installment_price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'installment_detail.g.dart';

@JsonSerializable(includeIfNull: false)
class InstallmentDetail with JsonConvertible<InstallmentDetail> {
  const InstallmentDetail({
    required this.binNumber,
    required this.price,
    required this.cardType,
    required this.cardAssociation,
    required this.cardFamilyName,
    this.force3ds,
    this.bankCode,
    required this.bankName,
    this.forceCvc,
    required this.commercial,
    required this.installmentPrices,
  });

  final String binNumber;
  final double price;
  final String cardType;
  final String cardAssociation;
  final String cardFamilyName;
  final int? force3ds;
  final int? bankCode;
  final String bankName;
  final int? forceCvc;
  final int commercial;
  final List<InstallmentPrice> installmentPrices;

  @override
  InstallmentDetail fromJson(JsonMap json) => _$InstallmentDetailFromJson(json);

  @override
  JsonMap toJson() => _$InstallmentDetailToJson(this);
}
