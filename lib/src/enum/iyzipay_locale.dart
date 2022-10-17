import 'package:json_annotation/json_annotation.dart';

/// Language that the responses are
@JsonEnum()
enum IyzipayLocale {
  /// Turkish
  @JsonValue('tr')
  tr,

  /// English
  @JsonValue('en')
  en;

  @override
  String toString() => name;
}
