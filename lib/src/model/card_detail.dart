import 'package:iyzipay/src/enum/card_association.dart';
import 'package:iyzipay/src/enum/card_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_detail.g.dart';

///
@JsonSerializable(includeIfNull: false)
class CardDetail {
  ///
  const CardDetail([
    this.cardToken,
    this.cardAlias,
    this.binNumber,
    this.lastFourDigits,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.cardBankCode,
    this.cardBankName,
  ]);

  ///
  factory CardDetail.fromJson(Map<String, dynamic> json) => _$CardDetailFromJson(json);

  /// The value of the hidden card determined by iyzico connected to the hidden card user.
  final String? cardToken;

  /// The name given to the card.
  final String? cardAlias;

  /// It is the first 6 digits of the card.
  final String? binNumber;

  ///
  final String? lastFourDigits;

  /// If the paid card is a local card, the type to which the card belongs.
  ///
  /// Valid values: `CREDIT_CARD`, `DEBIT_CARD`, `PREPAID_CARD`
  final CardType? cardType;

  /// If the paid card is a local card, the entity to which the card belongs.
  ///
  /// Valid values: `VISA`, `MASTER_CARD`, `AMERICAN_EXPRESS`
  final CardAssociation? cardAssociation;

  /// If the paid card is a local card, the family to which the card belongs.
  ///
  /// Valid values: `Bonus`, `Axess`, `World`, `Maximum`, `Paraf`, `CardFinans`.
  final String? cardFamily;

  /// If the paid card is a local card, the bank code to which the card belongs.
  final int? cardBankCode;

  /// If the paid card is a local card, the name of the bank to which the card belongs.
  final String? cardBankName;
}
