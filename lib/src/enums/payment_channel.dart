import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum PaymentChannel {
  /// Value: `MOBILE`
  mobile('MOBILE'),

  /// Value: `WEB`
  web('WEB'),

  /// Value: `MOBILE_WEB`
  mobileWeb('MOBILE_WEB'),

  /// Value: `MOBILE_IOS`
  mobileIOS('MOBILE_IOS'),

  /// Value: `MOBILE_ANDROID`
  mobileAndroid('MOBILE_ANDROID'),

  /// Value: `MOBILE_WINDOWS`
  mobileWindows('MOBILE_WINDOWS'),

  /// Value: `MOBILE_TABLET`
  mobileTablet('MOBILE_TABLET'),

  /// Value: `MOBILE_PHONE`
  mobilePhone('MOBILE_PHONE');

  const PaymentChannel(this.value);
  final String value;
}
