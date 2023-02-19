import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/loyalty_inquire_request.dart';
import 'package:iyzipay/src/resources/loyalty_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class LoyaltyInquire extends LoyaltyResource {
  const LoyaltyInquire();

  static Future<LoyaltyInquire?> create({
    required LoyaltyInquireRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createLoyaltyInquire.path,
      request: request,
      responseModel: const LoyaltyInquire(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
