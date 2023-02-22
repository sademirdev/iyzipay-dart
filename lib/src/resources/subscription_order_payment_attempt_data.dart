import 'package:iyzipay/src/enums/subscription/subscription_payment_status.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_order_payment_attempt_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionOrderPaymentAttemptData
    with JsonConvertible<SubscriptionOrderPaymentAttemptData> {
  SubscriptionOrderPaymentAttemptData({
    this.conversationId,
    this.createdDate,
    this.paymentId,
    this.paymentStatus,
    this.errorCode,
    this.errorMessage,
  });

  final String? conversationId;
  final String? createdDate;
  final int? paymentId;
  final SubscriptionPaymentStatus? paymentStatus;
  final String? errorCode;
  final String? errorMessage;

  @override
  SubscriptionOrderPaymentAttemptData fromJson(JsonMap json) =>
      _$SubscriptionOrderPaymentAttemptDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionOrderPaymentAttemptDataToJson(this);
}
