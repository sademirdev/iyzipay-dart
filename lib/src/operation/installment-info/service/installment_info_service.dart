import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/installment-info/request/retrieve_installment_info_request.dart';
import 'package:iyzipay/src/operation/installment-info/response/retrieve_installment_info_response.dart';

///
class InstallmentInfoService extends IyzipayService {
  ///
  const InstallmentInfoService(super.dio, super.options);

  ///
  Future<RetrieveInstallmentInfoResponse?> retrieve({
    required RetrieveInstallmentInfoRequest request,
  }) async {
    final result = connect<RetrieveInstallmentInfoRequest, RetrieveInstallmentInfoResponse>(
      requestModel: request,
      responseModel: const RetrieveInstallmentInfoResponse(),
      path: NetworkPaths.installmentInfo.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
