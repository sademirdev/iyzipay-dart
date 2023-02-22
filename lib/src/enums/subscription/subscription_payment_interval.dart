import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum SubscriptionPaymentInterval {
  daily(1),
  weekly(2),
  monthly(3),
  yearly(4);

  const SubscriptionPaymentInterval(this.value);
  final int value;
}
