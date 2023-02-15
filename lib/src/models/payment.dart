import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_payment_request.dart';
import 'package:iyzipay/src/requests/retrieve_payment_request.dart';
import 'package:iyzipay/src/resources/payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class Payment extends PaymentResource {
  const Payment();

  static Future<Payment?> create({
    required CreatePaymentRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createPayment.path,
      request: request,
      responseModel: const Payment(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<Payment?> retrieve({
    required RetrievePaymentRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrievePayment.path,
      request: request,
      responseModel: const Payment(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
