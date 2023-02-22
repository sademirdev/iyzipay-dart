import 'package:iyzipay/src/enums/subscription/subscription_order_status.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_order_payment_attempt_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_order_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionOrderData with JsonConvertible<SubscriptionOrderData> {
  SubscriptionOrderData({
    this.referenceCode,
    this.price,
    this.currencyCode,
    this.startPeriod,
    this.endPeriod,
    this.orderStatus,
    this.orderPaymentAttempts,
  });

  final String? referenceCode;
  final double? price;
  final String? currencyCode;
  final String? startPeriod;
  final String? endPeriod;
  final SubscriptionOrderStatus? orderStatus;
  @JsonKey(name: 'paymentAttempts')
  final List<SubscriptionOrderPaymentAttemptData>? orderPaymentAttempts;

  @override
  SubscriptionOrderData fromJson(JsonMap json) =>
      _$SubscriptionOrderDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionOrderDataToJson(this);
}
