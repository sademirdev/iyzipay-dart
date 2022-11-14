import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/health-check/health_check_request.dart';
import 'package:iyzipay/src/operation/health-check/health_check_response.dart';

///
class HealthCheckService extends IyzipayService {
  ///
  const HealthCheckService(super.dio, super.options);

  ///
  Future<HealthCheckResponse?> test() async {
    final result = connect<HealthCheckRequest, HealthCheckResponse>(
      requestModel: HealthCheckRequest(),
      responseModel: const HealthCheckResponse(),
      path: NetworkPaths.healthCheck.path,
      method: RequestType.get.name,
    );
    return result;
  }
}
