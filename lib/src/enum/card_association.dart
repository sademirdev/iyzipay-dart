import 'package:json_annotation/json_annotation.dart';

/// indicates the organization to which the card belongs
@JsonEnum()
enum CardAssociation {
  /// MasterCard: `MASTER_CARD`
  @JsonValue('MASTER_CARD')
  masterCard,

  /// Visa: `VISA`
  @JsonValue('VISA')
  visa,

  /// Troy: `TROY`
  @JsonValue('TROY')
  troy,

  /// AmericanExpress: `AMERICAN_EXPRESS`
  @JsonValue('AMERICAN_EXPRESS')
  americanExpress;

  @override
  String toString() {
    switch (this) {
      case CardAssociation.masterCard:
        return 'MASTER_CARD';
      case CardAssociation.visa:
        return 'VISA';
      case CardAssociation.troy:
        return 'TROY';
      case CardAssociation.americanExpress:
        return 'AMERICAN_EXPRESS';
    }
  }
}
