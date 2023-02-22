import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum OrderItemType {
  physical('PHYSICAL'),
  virtual('VIRTUAL');

  const OrderItemType(this.value);
  final String value;
}
