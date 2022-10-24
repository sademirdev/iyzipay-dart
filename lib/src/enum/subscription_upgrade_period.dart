import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum SubscriptionUpgradePeriod {
  /// Value: `NOW`
  now('NOW');

  ///
  const SubscriptionUpgradePeriod(this.value);

  ///
  final String value;
}
