import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/approval/request/create_approval_request.dart';
import 'package:iyzipay/src/operation/approval/response/create_approval_response.dart';

///
class ApprovalService extends IyzipayService {
  ///
  const ApprovalService(super.dio, super.options);

  ///
  Future<CreateApprovalResponse?> create({
    required CreateApprovalRequest request,
  }) async {
    final result = makeRequest<CreateApprovalRequest, CreateApprovalResponse>(
      requestModel: request,
      responseModel: const CreateApprovalResponse(),
      path: NetworkPaths.approve.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
