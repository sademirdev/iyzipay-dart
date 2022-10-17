import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/bin-number/request/retrieve_bin_number_request.dart';
import 'package:iyzipay/src/operation/bin-number/response/retrieve_bin_number_response.dart';

///
class BinNumberService extends IyzipayService {
  ///
  const BinNumberService(super.dio, super.options);

  ///
  Future<RetrieveBinNumberResponse?> retrieve({
    required RetrieveBinNumberRequest request,
  }) async {
    final result = requestMethod<RetrieveBinNumberRequest, RetrieveBinNumberResponse>(
      requestModel: request,
      responseModel: RetrieveBinNumberResponse(),
      path: NetworkPaths.binNumber.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
