import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/installment_detail.dart';
import 'package:iyzipay/src/requests/retrieve_installment_info_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'installment_info.g.dart';

@JsonSerializable(includeIfNull: false)
class InstallmentInfo extends IyzipayResource {
  const InstallmentInfo({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.installmentDetails,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final List<InstallmentDetail>? installmentDetails;

  static Future<InstallmentInfo?> retrieve({
    required RetrieveInstallmentInfoRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveInstallmentInfo.path,
      request: request,
      responseModel: const InstallmentInfo(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  InstallmentInfo fromJson(JsonMap json) => _$InstallmentInfoFromJson(json);

  @override
  JsonMap toJson() => _$InstallmentInfoToJson(this);
}
