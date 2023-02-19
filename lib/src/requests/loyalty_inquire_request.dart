import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/loyalty/loyalty_payment_card.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_inquire_request.g.dart';

@JsonSerializable(includeIfNull: false)
class LoyaltyInquireRequest extends BaseRequest<LoyaltyInquireRequest> {
  const LoyaltyInquireRequest({
    super.locale,
    super.conversationId,
    required this.paymentCard,
    required this.currency,
  });

  final LoyaltyPaymentCard paymentCard;
  final Currency currency;

  @override
  LoyaltyInquireRequest fromJson(JsonMap json) =>
      _$LoyaltyInquireRequestFromJson(json);

  @override
  JsonMap toJson() => _$LoyaltyInquireRequestToJson(this);
}
