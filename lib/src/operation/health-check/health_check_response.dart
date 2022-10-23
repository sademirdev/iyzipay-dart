import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'health_check_response.g.dart';

///
@JsonSerializable(includeIfNull: false)
class HealthCheckResponse extends Response<HealthCheckResponse> {
  ///
  const HealthCheckResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @override
  HealthCheckResponse fromJson(Map<String, dynamic> json) => _$HealthCheckResponseFromJson(json);
}
