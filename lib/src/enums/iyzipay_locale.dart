import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum IyzipayLocale {
  /// Turkish
  tr('tr'),

  /// English
  en('en');

  const IyzipayLocale(this.value);
  final String value;
}
