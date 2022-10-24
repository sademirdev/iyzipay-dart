import 'package:json_annotation/json_annotation.dart';

part 'payment_card.g.dart';

///
@JsonSerializable(includeIfNull: false)
class PaymentCard {
  ///
  const PaymentCard({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expireYear,
    required this.expireMonth,
    required this.cvc,
    this.registerCard,
  });

  /// Converts [Map] to [PaymentCard]
  factory PaymentCard.fromJson(Map<String, dynamic> json) => _$PaymentCardFromJson(json);

  /// The name and surname of the cardholder from whom the payment will be received.
  ///
  /// It is mandatory if payment is not made with a registered card.
  final String cardHolderName;

  /// The card number from which the payment will be received.
  ///
  /// It is mandatory if payment is not made with a registered card.
  final String cardNumber;

  /// The expiry date of the card from which the payment will be received.
  ///
  /// It is mandatory if payment is not made with a registered card.
  final String expireYear;

  /// The expiry date of the card from which the payment will be taken.
  ///
  /// It is mandatory if payment is not made with a registered card.
  final String expireMonth;

  /// The security code of the card from which the payment will be received.
  ///
  /// It is mandatory if payment is not made with a registered card.
  ///
  /// If it is sent while making a payment with a registered card, it is sent to the bank in the same way.
  final String cvc;

  /// Parameter that determines whether the card is saved during payment.
  ///
  /// Its default value is `0`, valid values are `0` and `1`.
  final int? registerCard;
}
