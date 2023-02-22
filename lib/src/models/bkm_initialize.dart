import 'package:iyzipay/src/digest_helper.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_bkm_initialize_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bkm_initialize.g.dart';

@JsonSerializable(includeIfNull: false)
class BkmInitialize extends IyzipayResource {
  const BkmInitialize({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.htmlContent,
    this.token,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? htmlContent;
  final String? token;

  static Future<BkmInitialize?> create({
    required CreateBkmInitializeRequest request,
    required Options options,
  }) async {
    final resp = await HttpClient.post(
      url: options.baseUrl + NetworkPaths.createBkmInitialize.path,
      request: request,
      responseModel: const BkmInitialize(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
    if (resp != null) {
      return resp.copyWith(
        htmlContent: DigestHelper.decodeString(resp.htmlContent),
      );
    }
    return resp;
  }

  @override
  BkmInitialize fromJson(JsonMap json) => _$BkmInitializeFromJson(json);

  @override
  JsonMap toJson() => _$BkmInitializeToJson(this);

  BkmInitialize copyWith({
    String? htmlContent,
    String? token,
  }) {
    return BkmInitialize(
      htmlContent: htmlContent ?? this.htmlContent,
      token: token ?? this.token,
    );
  }
}
