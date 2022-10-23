import 'package:json_annotation/json_annotation.dart';

/// IyzipayStatus indicates whether request is successful or not.
enum IyzipayStatus {
  /// indicates successful request
  @JsonValue('success')
  success,

  /// indicates failure request
  @JsonValue('failure')
  failure;

  @override
  String toString() => name;
}
