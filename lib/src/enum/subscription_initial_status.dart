import 'package:json_annotation/json_annotation.dart';

///
enum SubscriptionInitialStatus {
  /// Value: `ACTIVE`
  @JsonValue('ACTIVE')
  active,

  /// Value: `PENDING`
  @JsonValue('PENDING')
  pending,
}
