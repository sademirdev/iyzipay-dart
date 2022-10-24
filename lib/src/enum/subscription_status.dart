import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum SubscriptionStatus {
  /// Value: `EXPIRED`
  expired('EXPIRED'),

  /// Value: `UNPAID`
  unpaid('UNPAID'),

  /// Value: `CANCELED`
  cancelled('CANCELED'),

  /// Value: `ACTIVE`
  active('ACTIVE'),

  /// Value: `PENDING`
  pending('PENDING'),

  /// Value: `UPGRADED`
  upgraded('UPGRADED');

  ///
  const SubscriptionStatus(this.value);

  ///
  final String value;
}
