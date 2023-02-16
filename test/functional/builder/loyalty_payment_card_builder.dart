class LoyaltyPaymentCardBuilder {
  const LoyaltyPaymentCardBuilder._({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expireYear,
    required this.expireMonth,
    required this.cvc,
    required this.cardToken,
    required this.cardUserKey,
  });

  const LoyaltyPaymentCardBuilder.create()
      : cardHolderName = null,
        cardNumber = null,
        expireYear = null,
        expireMonth = null,
        cvc = null,
        cardToken = null,
        cardUserKey = null;

  final String? cardHolderName;
  final String? cardNumber;
  final String? expireYear;
  final String? expireMonth;
  final String? cvc;
  final String? cardToken;
  final String? cardUserKey;

  // TODO(sametdmr): check LoyaltyPaymentCard 
  // LoyaltyPaymentCard build(){}

  LoyaltyPaymentCardBuilder buildWithCardCredentials() {
    return copyWith(
      cardHolderName: 'John Doe',
      cardNumber: '5451030000000000',
      expireYear: '2023',
      expireMonth: '09',
      cvc: '123',
      // cardToken: 'card user key',
      // cardUserKey: 'card token',
    );
  }

  LoyaltyPaymentCardBuilder copyWith({
    String? cardHolderName,
    String? cardNumber,
    String? expireYear,
    String? expireMonth,
    String? cvc,
    String? cardToken,
    String? cardUserKey,
  }) {
    return LoyaltyPaymentCardBuilder._(
      cardHolderName: cardHolderName ?? this.cardHolderName,
      cardNumber: cardNumber ?? this.cardNumber,
      expireYear: expireYear ?? this.expireYear,
      expireMonth: expireMonth ?? this.expireMonth,
      cvc: cvc ?? this.cvc,
      cardToken: cardToken ?? this.cardToken,
      cardUserKey: cardUserKey ?? this.cardUserKey,
    );
  }
}
