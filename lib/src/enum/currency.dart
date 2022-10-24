import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum Currency {
  /// Value: `TRY`
  tl('TRY'),

  /// Value: `EUR`
  eur('EUR'),

  /// Value: `USD`
  usd('USD'),

  /// Value: `IRR`
  irr('IRR'),

  /// Value: `GBP`
  gbp('GBP'),

  /// Value: `NOK`
  nok('NOK'),

  /// Value: `RUB`
  rub('RUB'),

  /// Value: `CHF`
  chf('CHF');

  ///
  const Currency(this.value);

  ///
  final String value;
}
