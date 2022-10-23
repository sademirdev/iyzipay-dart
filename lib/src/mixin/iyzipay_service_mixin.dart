import 'package:iyzipay/src/interface/i_iyzipay.dart';
import 'package:iyzipay/src/operation/bin-number/service/bin_number_service.dart';

/// The mixin which gives a capability to Iyzipay in order to use all operation service
mixin IyzipayServiceMixin on IIyzipay {
  /// Service of Bin Number
  BinNumberService get binNumber => BinNumberService(dio, options);
}
