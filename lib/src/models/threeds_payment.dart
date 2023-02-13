import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/requests/create_threeds_payment_request.dart';
import 'package:iyzipay/src/requests/retrieve_payment_request.dart';
import 'package:iyzipay/src/resources/payment_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class ThreedsPayment extends PaymentResource {
  const ThreedsPayment();

  static Future<ThreedsPayment?> create({
    required CreateThreedsPaymentRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createThreedsPayment.path,
      request: request,
      responseModel: const ThreedsPayment(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<ThreedsPayment?> retrieve({
    required RetrievePaymentRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveThreedsPayment.path,
      request: request,
      responseModel: const ThreedsPayment(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
