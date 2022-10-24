import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum ApmType {
  /// Value: `SOFORT`
  sofort('SOFORT'),

  /// Value: `IDEAL`
  ideal('IDEAL'),

  /// Value: `QIWI`
  qiwi('QIWI'),

  /// Value: `GIROPAY`
  giropay('GIROPAY');

  ///
  const ApmType(this.value);

  ///
  final String value;
}
