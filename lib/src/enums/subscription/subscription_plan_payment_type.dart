import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum SubscriptionPlanPaymentType {
  recurring(1);

  const SubscriptionPlanPaymentType(this.value);
  final int value;
}
