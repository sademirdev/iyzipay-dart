// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

///
enum Currency {
  /// Value: `TRY`
  @JsonValue('TRY')
  TRY,

  /// Value: `EUR`
  @JsonValue('EUR')
  EUR,

  /// Value: `USD`
  @JsonValue('USD')
  USD,

  /// Value: `IRR`
  @JsonValue('IRR')
  IRR,

  /// Value: `GBP`
  @JsonValue('GBP')
  GBP,

  /// Value: `NOK`
  @JsonValue('NOK')
  NOK,

  /// Value: `RUB`
  @JsonValue('RUB')
  RUB,

  /// Value: `CHF`
  @JsonValue('CHF')
  CHF,
}
