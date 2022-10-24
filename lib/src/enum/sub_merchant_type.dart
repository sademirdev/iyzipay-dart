import 'package:json_annotation/json_annotation.dart';

///
@JsonEnum(valueField: 'value')
enum SubMerchantType {
  /// Value: `PERSONAL`
  personal('PERSONAL'),

  /// Value: `PRIVATE_COMPANY`
  privateCompany('PRIVATE_COMPANY'),

  /// Value: `LIMITED_OR_JOINT_STOCK_COMPANY`
  limitedOrJointStockCompany('LIMITED_OR_JOINT_STOCK_COMPANY');

  ///
  const SubMerchantType(this.value);

  ///
  final String value;
}
