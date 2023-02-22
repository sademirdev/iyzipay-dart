import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_card.g.dart';

@JsonSerializable(includeIfNull: false)
class PaymentCard with JsonConvertible<PaymentCard> {
  const PaymentCard({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expireYear,
    required this.expireMonth,
    required this.cvc,
    this.registerCard,
    required this.cardAlias,
    this.cardToken,
    this.cardUserKey,
    this.metadata,
    this.consumerToken,
    this.registerConsumerCard,
    this.ucsToken,
  });

  final String cardHolderName;
  final String cardNumber;
  final String expireYear;
  final String expireMonth;
  final String cvc;
  final int? registerCard;
  final String cardAlias;
  final String? cardToken;
  final String? cardUserKey;
  final Map<String, String>? metadata;
  final String? consumerToken;
  final bool? registerConsumerCard;
  final String? ucsToken;

  @override
  PaymentCard fromJson(JsonMap json) => _$PaymentCardFromJson(json);

  @override
  JsonMap toJson() => _$PaymentCardToJson(this);
}
