import 'package:json_annotation/json_annotation.dart';

///
enum SubscriptionPricingPlanInterval {
  /// Value: `DAILY`
  @JsonValue('DAILY')
  daily,

  /// Value: `WEEKLY`
  @JsonValue('WEEKLY')
  weekly,

  /// Value: `MONTHLY`
  @JsonValue('MONTHLY')
  monthly,

  /// Value: `YEARLY`
  @JsonValue('YEARLY')
  yearly,
}
