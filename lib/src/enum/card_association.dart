import 'package:json_annotation/json_annotation.dart';

/// indicates the organization to which the card belongs
@JsonEnum(valueField: 'value')
enum CardAssociation {
  /// MasterCard: `MASTER_CARD`
  masterCard('MASTER_CARD'),

  /// Visa: `VISA`
  visa('VISA'),

  /// Troy: `TROY`
  troy('TROY'),

  /// AmericanExpress: `AMERICAN_EXPRESS`
  americanExpress('AMERICAN_EXPRESS');

  ///
  const CardAssociation(this.value);

  ///
  final String value;
}
