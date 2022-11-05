import 'package:iyzipay/src/interface/i_iyzipay.dart';
import 'package:iyzipay/src/operation/approval/service/approval_service.dart';
import 'package:iyzipay/src/operation/bin-number/service/bin_number_service.dart';
import 'package:iyzipay/src/operation/cancel/service/cancel_service.dart';
import 'package:iyzipay/src/operation/checkout-form/service/checkout_form_service.dart';
import 'package:iyzipay/src/operation/disapproval/service/disapprove_service.dart';
import 'package:iyzipay/src/operation/health-check/health_check_service.dart';
import 'package:iyzipay/src/operation/installment-info/service/installment_info_service.dart';
import 'package:iyzipay/src/operation/payment/service/payment_service.dart';
import 'package:iyzipay/src/operation/refund/service/refund_service.dart';

/// The mixin which gives a capability to Iyzipay in order to use all operation service
mixin IyzipayServiceMixin on IIyzipay {
  ///
  ApprovalService get approval => ApprovalService(dio, options);

  ///
  CheckoutFormService get checkoutForm => CheckoutFormService(dio, options);

  ///
  DisapproveService get disapproval => DisapproveService(dio, options);

  ///
  HealthCheckService get healthCheck => HealthCheckService(dio, options);

  /// Service of Bin Number
  BinNumberService get binNumber => BinNumberService(dio, options);

  ///
  CancelService get cancel => CancelService(dio, options);

  ///
  RefundService get refund => RefundService(dio, options);

  ///
  InstallmentInfoService get installmentInfo => InstallmentInfoService(dio, options);

  ///
  PaymentService get payment => PaymentService(dio, options);
}
