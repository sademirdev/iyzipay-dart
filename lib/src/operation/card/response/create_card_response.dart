import 'package:iyzipay/src/enum/card_association.dart';
import 'package:iyzipay/src/enum/card_type.dart';
import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_card_response.g.dart';

/// {@template create_card_response}
///
/// You can store the [cardUserKey] and/or [cardToken] values.
///
/// {@endtemplate}
@JsonSerializable(includeIfNull: false)
class CreateCardResponse extends Response<CreateCardResponse> {
  /// {@macro create_card_response}
  const CreateCardResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
    this.binNumber,
    this.cardAlias,
    this.cardAssociation,
    this.cardBankCode,
    this.cardBankName,
    this.cardFamily,
    this.cardToken,
    this.cardType,
    this.cardUserKey,
    this.email,
    this.externalId,
    this.lastFourDigits,
  });

  ///
  final String? externalId;

  /// Email on the stored card.
  final String? email;

  /// The value of the hidden card user determined by iyzico.
  final String? cardUserKey;

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

  /// Converts [CreateCardResponse] to [Map]
  @override
  CreateCardResponse fromJson(Map<String, dynamic> json) => _$CreateCardResponseFromJson(json);
}
