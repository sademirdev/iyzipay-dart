import 'package:json_annotation/json_annotation.dart';

///
enum PaymentGroup {
  /// Value: `PRODUCT`
  @JsonValue('PRODUCT')
  product,

  /// Value: `LISTING`
  @JsonValue('LISTING')
  listing,

  /// Value: `SUBSCRIPTION`
  @JsonValue('SUBSCRIPTION')
  subscription,
}
