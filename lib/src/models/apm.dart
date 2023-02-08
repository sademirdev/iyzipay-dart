import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/shared/network_paths.dart';

class Apm extends ApmResource {
  const Apm();

  static Future<Apm?> create({
    required CreateApmInitializeRequest request,
    required Options options,
  }) async {
    return HttpClient.post<Apm, CreateApmInitializeRequest>(
      url: options.baseUrl + NetworkPaths.createApmInitialize.path,
      request: request,
      responseModel: const Apm(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<Apm?> retrieve({
    required RetrieveApmRequest request,
    required Options options,
  }) async {
    return HttpClient.post<Apm, RetrieveApmRequest>(
      url: options.baseUrl + NetworkPaths.retrieveApm.path,
      request: request,
      responseModel: const Apm(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }
}
