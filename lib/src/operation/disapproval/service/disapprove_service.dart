import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/disapproval/request/create_disapproval_request.dart';
import 'package:iyzipay/src/operation/disapproval/response/create_disapproval_response.dart';

///
class DisapproveService extends IyzipayService {
  ///
  const DisapproveService(super.dio, super.options);

  ///
  Future<CreateDisapprovalResponse?> create({
    required CreateDisapprovalRequest request,
  }) async {
    final result = connect<CreateDisapprovalRequest, CreateDisapprovalResponse>(
      requestModel: request,
      responseModel: const CreateDisapprovalResponse(),
      path: NetworkPaths.disapprove.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
