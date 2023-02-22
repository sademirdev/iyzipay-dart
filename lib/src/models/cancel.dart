import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_cancel_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cancel.g.dart';

@JsonSerializable(includeIfNull: false)
class Cancel extends IyzipayResource {
  const Cancel({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.paymentId,
    this.price,
    this.currency,
    this.connectorName,
    this.authCode,
    this.hostReference,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? paymentId;
  final double? price;
  final Currency? currency;
  final String? connectorName;
  final String? authCode;
  final String? hostReference;

  static Future<Cancel?> create({
    required CreateCancelRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createCancel.path,
      request: request,
      responseModel: const Cancel(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  IyzipayResource fromJson(JsonMap json) => _$CancelFromJson(json);

  @override
  JsonMap toJson() => _$CancelToJson(this);
}
