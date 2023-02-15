import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_pay_with_iyzico_initialize_request.dart';
import 'package:iyzipay/src/resources/pay_with_iyzico_initialize_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class PayWithIyzicoInitialize extends PayWithIyzicoInitializeResource {
  const PayWithIyzicoInitialize();

  static Future<PayWithIyzicoInitialize?> create({
    required CreatePayWithIyzicoInitializeRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createPayWithIyzicoInitialize.path,
      request: request,
      responseModel: const PayWithIyzicoInitialize(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
