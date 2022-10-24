import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum PaymentGroup {
  /// Value: `PRODUCT`
  product('PRODUCT'),

  /// Value: `LISTING`
  listing('LISTING'),

  /// Value: `SUBSCRIPTION`
  subscription('SUBSCRIPTION');

  ///
  const PaymentGroup(this.value);

  ///
  final String value;
}
