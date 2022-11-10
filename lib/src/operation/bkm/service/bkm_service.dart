import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/bkm/request/initialize_bkm_request.dart';
import 'package:iyzipay/src/operation/bkm/response/initialize_bkm_response.dart';

///
class BkmService extends IyzipayService {
  ///
  const BkmService(super.dio, super.options);

  ///
  Future<InitializeBkmResponse?> initialize({
    required InitializeBkmRequest request,
  }) async {
    final result = makeRequest<InitializeBkmRequest, InitializeBkmResponse>(
      requestModel: request,
      responseModel: const InitializeBkmResponse(),
      path: NetworkPaths.bkmInitialize.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
