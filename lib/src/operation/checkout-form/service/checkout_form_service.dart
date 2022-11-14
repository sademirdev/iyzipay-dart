import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/checkout-form/request/initialize_checkout_form_request.dart';
import 'package:iyzipay/src/operation/checkout-form/request/retrieve_checkout_form_request.dart';
import 'package:iyzipay/src/operation/checkout-form/response/initialize_checkout_form_response.dart';
import 'package:iyzipay/src/operation/checkout-form/response/retrieve_checkout_form_response.dart';

///
class CheckoutFormService extends IyzipayService {
  ///
  const CheckoutFormService(super.dio, super.options);

  ///
  Future<InitializeCheckoutFormResponse?> initialize({
    required InitializeCheckoutFormRequest request,
  }) async {
    final result = connect<InitializeCheckoutFormRequest, InitializeCheckoutFormResponse>(
      requestModel: request,
      responseModel: const InitializeCheckoutFormResponse(),
      path: NetworkPaths.checkoutFormInitialize.path,
      method: RequestType.post.name,
    );
    return result;
  }

  ///
  Future<RetrieveCheckoutFormResponse?> retrieve({
    required RetrieveCheckoutFormRequest request,
  }) async {
    final result = connect<RetrieveCheckoutFormRequest, RetrieveCheckoutFormResponse>(
      requestModel: request,
      responseModel: const RetrieveCheckoutFormResponse(),
      path: NetworkPaths.retrieveCheckoutForm.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
