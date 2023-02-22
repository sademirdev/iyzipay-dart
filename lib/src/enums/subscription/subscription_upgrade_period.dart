import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum SubscriptionUpgradePeriod {
  now(1),
  nextPeriod(2);

  const SubscriptionUpgradePeriod(this.value);
  final int value;
}
