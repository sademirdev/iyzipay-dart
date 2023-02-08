import 'package:json_annotation/json_annotation.dart';

/// IyzipayStatus indicates whether request is successful or not.
@JsonEnum(valueField: 'value')
enum IyzipayStatus {
  /// Indicates successful request
  success('success'),

  /// Indicates failure request
  failure('failure');

  const IyzipayStatus(this.value);
  final String value;
}
