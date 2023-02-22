import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum SubscriptionOrderStatus {
  merchantSuspended(-99),
  failed(-1),
  success(1),
  waiting(2),
  processing(3),
  subscriptionUpgraded(4),
  subscriptionCanceled(5),
  queued(6);

  const SubscriptionOrderStatus(this.value);
  final int value;
}
