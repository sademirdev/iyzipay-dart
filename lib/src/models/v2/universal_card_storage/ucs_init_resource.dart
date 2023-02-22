import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/init_ucs_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ucs_init_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class UcsInitResource extends IyzipayResource {
  const UcsInitResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.ucsToken,
    this.gsmNumber,
    this.maskedGsmNumber,
    this.merchantName,
    this.script,
    this.scriptType,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? ucsToken;
  final String? gsmNumber;
  final String? maskedGsmNumber;
  final String? merchantName;
  final String? script;
  final String? scriptType;

  static Future<UcsInitResource?> create({
    required InitUcsRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl + NetworkPaths.createUcsInitResource.path;
    return HttpClient.post(
      url: uri,
      request: request,
      responseModel: const UcsInitResource(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  @override
  UcsInitResource fromJson(JsonMap json) => _$UcsInitResourceFromJson(json);

  @override
  JsonMap toJson() => _$UcsInitResourceToJson(this);
}
