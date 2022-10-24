import 'package:json_annotation/json_annotation.dart';

///
enum SubMerchantType {
  /// Value: `PERSONAL`
  @JsonValue('PERSONAL')
  personal,

  /// Value: `PRIVATE_COMPANY`
  @JsonValue('PRIVATE_COMPANY')
  privateCompany,

  /// Value: `LIMITED_OR_JOINT_STOCK_COMPANY`
  @JsonValue('LIMITED_OR_JOINT_STOCK_COMPANY')
  limitedOrJointStockCompany,
}
