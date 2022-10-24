import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum BasketItemType {
  /// Value: `PHYSICAL`
  physical('PHYSICAL'),

  /// Value: `VIRTUAL`
  virtual('VIRTUAL');

  ///
  const BasketItemType(this.value);

  ///
  final String value;
}
