import 'package:iyzipay/src/interface/i_iyzipay.dart';
import 'package:iyzipay/src/operation/bin-number/service/bin_number_service.dart';
import 'package:iyzipay/src/operation/cancel/service/cancel_service.dart';
import 'package:iyzipay/src/operation/health-check/health_check_service.dart';
import 'package:iyzipay/src/operation/installment-info/service/installment_info_service.dart';
import 'package:iyzipay/src/operation/payment/service/payment_service.dart';

/// The mixin which gives a capability to Iyzipay in order to use all operation service
mixin IyzipayServiceMixin on IIyzipay {
  ///
  HealthCheckService get healthCheck => HealthCheckService(dio, options);

  /// Service of Bin Number
  BinNumberService get binNumber => BinNumberService(dio, options);

  ///
  CancelService get cancel => CancelService(dio, options);

  ///
  InstallmentInfoService get installmentInfo => InstallmentInfoService(dio, options);

  ///
  PaymentService get payment => PaymentService(dio, options);
}
