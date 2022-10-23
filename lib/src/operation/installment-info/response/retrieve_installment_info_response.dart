import 'package:iyzipay/src/enum/card_association.dart';
import 'package:iyzipay/src/enum/card_type.dart';
import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_installment_info_response.g.dart';

///
@JsonSerializable(includeIfNull: false)
class RetrieveInstallmentInfoResponse extends Response<RetrieveInstallmentInfoResponse> {
  ///
  const RetrieveInstallmentInfoResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.installmentDetails,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  ///
  final List<InstallmentDetail?>? installmentDetails;

  /// Converts [RetrieveInstallmentInfoResponse] to [Map]
  @override
  RetrieveInstallmentInfoResponse fromJson(Map<String, dynamic> json) => _$RetrieveInstallmentInfoResponseFromJson(json);
}

///
@JsonSerializable(includeIfNull: false)
class InstallmentDetail {
  ///
  const InstallmentDetail({
    this.binNumber,
    this.price,
    this.cardType,
    this.cardAssociation,
    this.cardFamilyName,
    this.force3ds,
    this.bankName,
    this.bankCode,
    this.forceCvc,
    this.commercial,
    this.installmentPrices,
  });

  /// Converts [Map] to [InstallmentDetail]
  factory InstallmentDetail.fromJson(Map<String, dynamic> json) => _$InstallmentDetailFromJson(json);

  /// First 6 digits of card
  final String? binNumber;

  /// Total amount of basket. Sum of basket items’ amounts
  /// must be equal to the total price of basket
  final double? price;

  /// Valid values are `CREDIT_CARD`, `DEBIT_CARD`, `PREPAID_CARD`
  final CardType? cardType;

  /// Valid values are `TROY`, `VISA`, `MASTER_CARD`, `AMERICAN_EXPRESS`
  final CardAssociation? cardAssociation;

  /// Valid values are `Bonus`, `Axess`, `World`, `Maximum`, `Paraf`, `CardFinans`, `Advantage`
  final String? cardFamilyName;

  /// Force 3D flag. If it returns 1, transaction must be processed with 3D Auth
  final int? force3ds;

  /// Name of the issuer bank
  final String? bankName;

  /// Bank code of the issuer bank
  final int? bankCode;

  ///
  final int? forceCvc;

  ///
  final int? commercial;

  ///
  final List<InstallmentPrice?>? installmentPrices;
}

///
@JsonSerializable(includeIfNull: false)
class InstallmentPrice {
  ///
  const InstallmentPrice({
    this.installmentPrice,
    this.totalPrice,
    this.installmentNumber,
  });

  /// Converts [Map] to [InstallmentPrice]
  factory InstallmentPrice.fromJson(Map<String, dynamic> json) => _$InstallmentPriceFromJson(json);

  /// Amount for per installment
  final double? installmentPrice;

  /// Installment fee added to total amount
  final double? totalPrice;

  /// Installment number
  final int? installmentNumber;
}
