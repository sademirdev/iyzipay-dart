import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum RefundReason {
  doublePayment('DOUBLE_PAYMENT'),
  buyerRequest('BUYER_REQUEST'),
  fraud('FRAUD'),
  other('OTHER');

  const RefundReason(this.value);
  final String value;
}
