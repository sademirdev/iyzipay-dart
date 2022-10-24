import 'package:json_annotation/json_annotation.dart';

/// The type of the card
@JsonEnum(valueField: 'value')
enum CardType {
  /// Credit Card: `CREDIT_CARD`
  creditCard('CREDIT_CARD'),

  /// Debit Card: `DEBIT_CARD`
  debitCard('DEBIT_CARD'),

  /// PrePaid CArd: `PREPAID_CARD`
  prePaidCard('PREPAID_CARD');

  ///
  const CardType(this.value);

  ///
  final String value;
}
