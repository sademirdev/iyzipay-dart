import 'package:json_annotation/json_annotation.dart';

///
enum RefundReason {
  /// Value: `double_payment`
  @JsonValue('double_payment')
  doublePayment,

  /// Value: `buyer_request`
  @JsonValue('buyer_request')
  buyerRequest,

  /// Value: `fraud`
  @JsonValue('fraud')
  fraud,

  /// Value: `other`
  @JsonValue('other')
  other,
}
