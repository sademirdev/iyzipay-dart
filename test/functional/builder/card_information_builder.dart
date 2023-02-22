import 'package:iyzipay/src/models/card_information.dart';

class CardInformationBuilder {
  const CardInformationBuilder._({
    required this.cardAlias,
    required this.cardNumber,
    required this.expireYear,
    required this.expireMonth,
    required this.cardHolderName,
    required this.metadata,
  });

  const CardInformationBuilder.create()
      : cardAlias = 'card alias',
        cardNumber = '5528790000000008',
        expireYear = '2030',
        expireMonth = '12',
        cardHolderName = 'John Doe',
        metadata = null;

  final String cardAlias;
  final String cardNumber;
  final String expireYear;
  final String expireMonth;
  final String cardHolderName;
  final Map<String, String>? metadata;

  CardInformation build() {
    return CardInformation(
      cardAlias: cardAlias,
      cardNumber: cardNumber,
      expireYear: expireYear,
      expireMonth: expireMonth,
      cardHolderName: cardHolderName,
      metadata: metadata,
    );
  }

  CardInformationBuilder copyWith({
    String? cardAlias,
    String? cardNumber,
    String? expireYear,
    String? expireMonth,
    String? cardHolderName,
    Map<String, String>? metadata,
  }) {
    return CardInformationBuilder._(
      cardAlias: cardAlias ?? this.cardAlias,
      cardNumber: cardNumber ?? this.cardNumber,
      expireYear: expireYear ?? this.expireYear,
      expireMonth: expireMonth ?? this.expireMonth,
      cardHolderName: cardHolderName ?? this.cardHolderName,
      metadata: metadata ?? this.metadata,
    );
  }
}
