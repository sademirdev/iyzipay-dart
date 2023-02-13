import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum SubMerchantType {
  personal('PERSONAL'),
  privateCompany('PRIVATE_COMPANY'),
  limitedOrJointStockCompany('LIMITED_OR_JOINT_STOCK_COMPANY');

  const SubMerchantType(this.value);
  final String value;
}
