import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/cancel/request/create_cancel_request.dart';
import 'package:iyzipay/src/operation/cancel/response/create_cancel_response.dart';

///
class CancelService extends IyzipayService {
  ///
  const CancelService(super.dio, super.options);

  ///
  Future<CreateCancelResponse?> create({
    required CreateCancelRequest request,
  }) async {
    final result = makeRequest<CreateCancelRequest, CreateCancelResponse>(
      requestModel: request,
      responseModel: const CreateCancelResponse(),
      path: NetworkPaths.cancel.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
