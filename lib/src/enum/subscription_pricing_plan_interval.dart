import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum SubscriptionPricingPlanInterval {
  /// Value: `DAILY`
  daily('DAILY'),

  /// Value: `WEEKLY`
  weekly('WEEKLY'),

  /// Value: `MONTHLY`
  monthly('MONTHLY'),

  /// Value: `YEARLY`
  yearly('YEARLY');

  ///
  const SubscriptionPricingPlanInterval(this.value);

  ///
  final String value;
}
