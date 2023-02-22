// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum Currency {
  /// Value: `TRY`
  TRY('TRY'),

  /// Value: `EUR`
  EUR('EUR'),

  /// Value: `USD`
  USD('USD'),

  /// Value: `IRR`
  IRR('IRR'),

  /// Value: `GBP`
  GBP('GBP'),

  /// Value: `NOK`
  NOK('NOK'),

  /// Value: `RUB`
  RUB('RUB'),

  /// Value: `CHF`
  CHF('CHF');

  const Currency(this.value);

  final String value;
}
