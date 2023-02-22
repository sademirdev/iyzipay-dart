import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum SubscriptionPaymentStatus {
  failed(-1),
  success(1),
  processing(3);

  const SubscriptionPaymentStatus(this.value);
  final int value;
}
