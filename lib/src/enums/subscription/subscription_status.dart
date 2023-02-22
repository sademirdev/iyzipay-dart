import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum SubscriptionStatus {
  merchantSuspended(-99),

  /// If the subscription period is over, the status is expired.
  /// No other payment is taken from the card
  expired(-4),

  /// If the payment could not be received during the subscription, the status is unpaid
  unpaid(-3),

  /// If the subscription has been cancelled, the status will be cancelled
  canceled(-1),

  /// Status active if a subscription is active and payments are received regularly
  active(1),

  /// If a subscription is paused it will be status pending
  pending(2),

  /// Status upgraded if the subscription was updated with another plan
  upgraded(3);

  const SubscriptionStatus(this.value);
  final int value;
}
