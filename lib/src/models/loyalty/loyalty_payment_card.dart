import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_payment_card.g.dart';

@JsonSerializable(includeIfNull: false)
class LoyaltyPaymentCard with JsonConvertible<LoyaltyPaymentCard> {
  const LoyaltyPaymentCard({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expireYear,
    required this.expireMonth,
    required this.cvc,
    required this.cardUserKey,
    required this.cardToken,
  });

  final String cardHolderName;
  final String cardNumber;
  final String expireYear;
  final String expireMonth;
  final String cvc;
  final String cardUserKey;
  final String cardToken;

  @override
  LoyaltyPaymentCard fromJson(JsonMap json) =>
      _$LoyaltyPaymentCardFromJson(json);

  @override
  JsonMap toJson() => _$LoyaltyPaymentCardToJson(this);
}
