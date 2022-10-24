import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum SubscriptionInitialStatus {
  /// Value: `ACTIVE`
  active('ACTIVE'),

  /// Value: `PENDING`
  pending('PENDING');

  ///
  const SubscriptionInitialStatus(this.value);

  ///
  final String value;
}
