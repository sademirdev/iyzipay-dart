import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum()
enum CardAssociation {
  ///
  @JsonValue('MASTER_CARD')
  masterCard,

  ///
  @JsonValue('VISA')
  visa,

  ///
  @JsonValue('TROY')
  troy,

  ///
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
