import 'package:json_annotation/json_annotation.dart';

///
enum BasketItemType {
  /// Value: `PHYSICAL`
  @JsonValue('PHYSICAL')
  physical,

  /// Value: `VIRTUAL`
  @JsonValue('VIRTUAL')
  virtual,
}
