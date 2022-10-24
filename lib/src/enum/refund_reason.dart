import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum RefundReason {
  /// Value: `double_payment`
  doublePayment('double_payment'),

  /// Value: `buyer_request`
  buyerRequest('buyer_request'),

  /// Value: `fraud`
  fraud('fraud'),

  /// Value: `other`
  other('other');

  ///
  const RefundReason(this.value);

  ///
  final String value;
}
