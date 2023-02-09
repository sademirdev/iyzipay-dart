import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum BasketItemType {
  physical('PHYSICAL'),
  virtual('VIRTUAL');

  const BasketItemType(this.value);
  final String value;
}
