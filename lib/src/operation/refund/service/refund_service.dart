import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/refund/request/create_refund_request.dart';
import 'package:iyzipay/src/operation/refund/response/create_refund_response.dart';

///
class RefundService extends IyzipayService {
  ///
  const RefundService(super.dio, super.options);

  ///
  Future<CreateRefundResponse?> create({
    required CreateRefundRequest request,
  }) async {
    final result = connect<CreateRefundRequest, CreateRefundResponse>(
      requestModel: request,
      responseModel: const CreateRefundResponse(),
      path: NetworkPaths.refund.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
