import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum PlanPaymentType {
  /// Value: `RECURRING`
  recurring('RECURRING');

  ///
  const PlanPaymentType(this.value);

  ///
  final String value;
}
