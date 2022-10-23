import 'package:json_annotation/json_annotation.dart';

/// The type of the card
@JsonEnum()
enum CardType {
  /// Credit Card: `CREDIT_CARD`
  @JsonValue('CREDIT_CARD')
  creditCard,

  /// Debit Card: `DEBIT_CARD`
  @JsonValue('DEBIT_CARD')
  debitCard,

  /// PrePaid CArd: `PREPAID_CARD`
  @JsonValue('PREPAID_CARD')
  prePaidCard;

  @override
  String toString() {
    switch (this) {
      case CardType.creditCard:
        return 'CREDIT_CARD';
      case CardType.debitCard:
        return 'DEBIT_CARD';
      case CardType.prePaidCard:
        return 'PREPAID_CARD';
    }
  }
}
