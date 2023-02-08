import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class ApiTest extends IyzipayResource {
  static Future<IyzipayResource?> retrieve(Options options) async {
    return HttpClient.get<IyzipayResource>(
      url: options.baseUrl + NetworkPaths.apiTest.path,
      responseModel: const IyzipayResource(),
    );
  }
}
