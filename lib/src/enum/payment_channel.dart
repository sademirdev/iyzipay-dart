import 'package:json_annotation/json_annotation.dart';

///
enum PaymentChannel {
  /// Value: `MOBILE`
  @JsonValue('MOBILE')
  mobile,

  /// Value: `WEB`
  @JsonValue('WEB')
  web,

  /// Value: `MOBILE_WEB`
  @JsonValue('MOBILE_WEB')
  mobileWeb,

  /// Value: `MOBILE_IOS`
  @JsonValue('MOBILE_IOS')
  mobileIOS,

  /// Value: `MOBILE_ANDROID`
  @JsonValue('MOBILE_ANDROID')
  mobileAndroid,

  /// Value: `MOBILE_WINDOWS`
  @JsonValue('MOBILE_WINDOWS')
  mobileWindows,

  /// Value: `MOBILE_TABLET`
  @JsonValue('MOBILE_TABLET')
  mobileTablet,

  /// Value: `MOBILE_PHONE`
  @JsonValue('MOBILE_PHONE')
  mobilePhone,
}
