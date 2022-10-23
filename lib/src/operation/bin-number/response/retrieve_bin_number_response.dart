import 'package:iyzipay/src/enum/card_association.dart';
import 'package:iyzipay/src/enum/card_type.dart';
import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'retrieve_bin_number_response.g.dart';

/// {@template retrieve_bin_number_response}
/// {@endtemplate}

@immutable
@JsonSerializable(includeIfNull: false, createToJson: false)
class RetrieveBinNumberResponse extends Response<RetrieveBinNumberResponse> {
  /// {@macro retrieve_bin_number_response}
  @internal
  const RetrieveBinNumberResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.binNumber,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.bankName,
    this.bankCode,
    this.commercial,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  /// Converts [Map] to [RetrieveBinNumberResponse]
  factory RetrieveBinNumberResponse.fromJson(Map<String, dynamic> json) => _$RetrieveBinNumberResponseFromJson(json);

  /// It is the first 6 digits of the card.
  final String? binNumber;

  /// If the paid card is a local card, the type to which the card belongs.
  ///
  /// Valid values: `CREDIT_CARD`, `DEBIT_CARD`, `PREPAID_CARD`
  final CardType? cardType;

  /// If the paid card is a local card, the entity to which the card belongs.
  ///
  /// Valid values: `TROY`, `VISA`, `MASTER_CARD`, `AMERICAN_EXPRESS`
  final CardAssociation? cardAssociation;

  /// If the card made with Card is a local card,
  /// it is the family to which the card belongs.
  ///
  /// Valid values: `Bonus`, `Axess`, `World`, `Maximum`, `Paraf`, `CardFinans`, `Advantage`
  final String? cardFamily;

  /// If the paid card is a local card, the name of the bank to which the card belongs.
  final String? bankName;

  /// If the paid card is a local card, the bank code to which the card belongs.
  final int? bankCode;

  ///
  final int? commercial;

  /// Converts [RetrieveBinNumberResponse] to [Map]
  @override
  RetrieveBinNumberResponse fromJson(Map<String, dynamic> json) => _$RetrieveBinNumberResponseFromJson(json);
}
