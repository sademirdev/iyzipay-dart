import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/payment/request/create_payment_request.dart';
import 'package:iyzipay/src/operation/payment/request/retrieve_payment_request.dart';
import 'package:iyzipay/src/operation/payment/response/create_payment_response.dart';
import 'package:iyzipay/src/operation/payment/response/retrieve_payment_response.dart';

///
class PaymentService extends IyzipayService {
  ///
  const PaymentService(super.dio, super.options);

  ///
  Future<CreatePaymentResponse?> create({
    required CreatePaymentRequest request,
  }) async {
    final result = makeRequest<CreatePaymentRequest, CreatePaymentResponse>(
      requestModel: request,
      responseModel: const CreatePaymentResponse(),
      path: NetworkPaths.createPayment.path,
      method: RequestType.post.name,
    );
    return result;
  }

  ///
  Future<RetrievePaymentResponse?> retrieve({
    required RetrievePaymentRequest request,
  }) async {
    final result = makeRequest<RetrievePaymentRequest, RetrievePaymentResponse>(
      requestModel: request,
      responseModel: const RetrievePaymentResponse(),
      path: NetworkPaths.retrievePayment.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
