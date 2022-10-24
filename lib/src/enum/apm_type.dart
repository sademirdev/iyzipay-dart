import 'package:json_annotation/json_annotation.dart';

///
enum ApmType {
  /// Value: `SOFORT`
  @JsonValue('SOFORT')
  sofort,

  /// Value: `IDEAL`
  @JsonValue('IDEAL')
  ideal,

  /// Value: `QIWI`
  @JsonValue('QIWI')
  qiwi,

  /// Value: `GIROPAY`
  @JsonValue('GIROPAY')
  giropay,
}
