import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/payment/request/create_payment_request.dart';
import 'package:iyzipay/src/operation/payment/response/create_payment_response.dart';

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

  // Todo(sametdmr): add retrieve method
}
