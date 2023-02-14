import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum IyziLinkStatus {
  deleted('DELETED'),
  passive('PASSIVE'),
  active('ACTIVE');

  const IyziLinkStatus(this.value);
  final String value;
}
