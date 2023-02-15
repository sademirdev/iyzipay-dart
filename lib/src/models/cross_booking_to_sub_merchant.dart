import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_cross_booking_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class CrossBookingToSubMerchant extends IyzipayResource {
  const CrossBookingToSubMerchant();

  static Future<CrossBookingToSubMerchant?> create({
    required CreateCrossBookingRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.crateCrossBookingToSubMerchant.path,
      request: request,
      responseModel: const CrossBookingToSubMerchant(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
