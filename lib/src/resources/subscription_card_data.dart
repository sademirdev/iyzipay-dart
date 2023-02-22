import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_card_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionCardData with JsonConvertible<SubscriptionCardData> {
  SubscriptionCardData({
    this.cardHolderName,
    this.cardNumber,
    this.expireYear,
    this.expireMonth,
    this.cvc,
    this.ucsToken,
    this.cardToken,
    this.consumerToken,
  });

  final String? cardHolderName;
  final String? cardNumber;
  final String? expireYear;
  final String? expireMonth;
  final String? cvc;
  final String? ucsToken;
  final String? cardToken;
  final String? consumerToken;

  @override
  SubscriptionCardData fromJson(JsonMap json) =>
      _$SubscriptionCardDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionCardDataToJson(this);
}
