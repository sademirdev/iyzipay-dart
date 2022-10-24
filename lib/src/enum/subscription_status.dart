import 'package:json_annotation/json_annotation.dart';

///
enum SubscriptionStatus {
  /// Value: `EXPIRED`
  @JsonValue('EXPIRED')
  expired,

  /// Value: `UNPAID`
  @JsonValue('UNPAID')
  unpaid,

  /// Value: `CANCELED`
  @JsonValue('CANCELED')
  cancelled,

  /// Value: `ACTIVE`
  @JsonValue('ACTIVE')
  active,

  /// Value: `PENDING`
  @JsonValue('PENDING')
  pending,

  /// Value: `UPGRADED`
  @JsonValue('UPGRADED')
  upgraded,
}
