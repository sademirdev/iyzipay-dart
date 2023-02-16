import 'package:iyzipay/src/models/payment_card.dart';

class PaymentCardBuilder {
  const PaymentCardBuilder._({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expireYear,
    required this.expireMonth,
    required this.cvc,
    required this.registerCard,
    required this.cardAlias,
    required this.cardToken,
    required this.cardUserKey,
    required this.consumerToken,
    required this.registerConsumerCard,
    required this.ucsToken,
  });

  const PaymentCardBuilder.create()
      : cardHolderName = null,
        cardNumber = null,
        expireYear = null,
        expireMonth = null,
        cvc = null,
        registerCard = 0,
        cardAlias = null,
        cardToken = null,
        cardUserKey = null,
        consumerToken = null,
        registerConsumerCard = null,
        ucsToken = null;

  final String? cardHolderName;
  final String? cardNumber;
  final String? expireYear;
  final String? expireMonth;
  final String? cvc;
  final int? registerCard;
  final String? cardAlias;
  final String? cardToken;
  final String? cardUserKey;
  final String? consumerToken;
  final bool? registerConsumerCard;
  final String? ucsToken;

  PaymentCard build() {
    assert(
      cardHolderName != null &&
          cardNumber != null &&
          expireYear != null &&
          expireMonth != null &&
          cvc != null &&
          cardAlias != null,
      '[cardHolderName], [cardNumber], [expireYear], [expireMonth], [cvc], [cardAlias] cannot be null',
    );

    return PaymentCard(
      cardHolderName: cardHolderName!,
      cardNumber: cardNumber!,
      expireYear: expireYear!,
      expireMonth: expireMonth!,
      cvc: cvc!,
      registerCard: registerCard,
      cardAlias: cardAlias!,
      cardToken: cardToken,
      cardUserKey: cardUserKey,
      consumerToken: consumerToken,
      registerConsumerCard: registerConsumerCard,
      ucsToken: ucsToken,
    );
  }

  PaymentCardBuilder buildWithCardCredentials() {
    return copyWith(
      cardHolderName: 'John Doe',
      cardNumber: '5528790000000008',
      expireYear: '2030',
      expireMonth: '12',
      cvc: '123',
      cardAlias: 'card alias',
    );
  }

  PaymentCardBuilder buildWithYKBCardCredentials() {
    return copyWith(
      cardHolderName: 'John Doe',
      cardNumber: '5451030000000000',
      expireYear: '2030',
      expireMonth: '09',
      cvc: '711',
      cardAlias: 'card alias',
    );
  }

  PaymentCardBuilder buildWithDenizBankCardCredentials() {
    return copyWith(
      cardHolderName: 'John Doe',
      cardNumber: '5549607159333771',
      expireYear: '2030',
      expireMonth: '09',
      cvc: '711',
      cardAlias: 'card alias',
    );
  }

  PaymentCardBuilder copyWith({
    String? cardHolderName,
    String? cardNumber,
    String? expireYear,
    String? expireMonth,
    String? cvc,
    int? registerCard,
    String? cardAlias,
    String? cardToken,
    String? cardUserKey,
    String? consumerToken,
    bool? registerConsumerCard,
    String? ucsToken,
  }) {
    return PaymentCardBuilder._(
      cardHolderName: cardHolderName ?? this.cardHolderName,
      cardNumber: cardNumber ?? this.cardNumber,
      expireYear: expireYear ?? this.expireYear,
      expireMonth: expireMonth ?? this.expireMonth,
      cvc: cvc ?? this.cvc,
      registerCard: registerCard ?? this.registerCard,
      cardAlias: cardAlias ?? this.cardAlias,
      cardToken: cardToken ?? this.cardToken,
      cardUserKey: cardUserKey ?? this.cardUserKey,
      consumerToken: consumerToken ?? this.consumerToken,
      registerConsumerCard: registerConsumerCard ?? this.registerConsumerCard,
      ucsToken: ucsToken ?? this.ucsToken,
    );
  }
}
