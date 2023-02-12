import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/requests/create_payment_request.dart';
import 'package:iyzipay/src/requests/retrieve_payment_request.dart';
import 'package:iyzipay/src/resources/payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class PaymentPreAuth extends PaymentResource {
  const PaymentPreAuth();

  static Future<PaymentPreAuth?> create({
    required CreatePaymentRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createPaymentPreAuth.path,
      request: request,
      responseModel: const PaymentPreAuth(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<PaymentPreAuth?> retrieve({
    required RetrievePaymentRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrievePaymentPreAuth.path,
      request: request,
      responseModel: const PaymentPreAuth(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
