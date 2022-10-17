import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum()
enum CardType {
  ///
  @JsonValue('CREDIT_CARD')
  creditCard,

  ///
  @JsonValue('DEBIT_CARD')
  debitCard;

  @override
  String toString() {
    switch (this) {
      case CardType.creditCard:
        return 'CREDIT_CARD';
      case CardType.debitCard:
        return 'DEBIT_CARD';
    }
  }
}
