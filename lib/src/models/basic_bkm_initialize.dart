import 'package:iyzipay/src/digest_helper.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_basic_bkm_initialize_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basic_bkm_initialize.g.dart';

@JsonSerializable(includeIfNull: false)
class BasicBkmInitialize extends IyzipayResource {
  const BasicBkmInitialize({
    this.htmlContent,
    this.token,
  });

  final String? htmlContent;
  final String? token;

  static Future<BasicBkmInitialize?> create({
    required CreateBasicBkmInitializeRequest request,
    required Options options,
  }) async {
    final resp = await HttpClient.post<BasicBkmInitialize,
        CreateBasicBkmInitializeRequest>(
      url: options.baseUrl + NetworkPaths.createBasicBkmInitialize.path,
      request: request,
      responseModel: const BasicBkmInitialize(),
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
  BasicBkmInitialize fromJson(JsonMap json) =>
      _$BasicBkmInitializeFromJson(json);

  @override
  JsonMap toJson() => _$BasicBkmInitializeToJson(this);

  BasicBkmInitialize copyWith({
    String? htmlContent,
    String? token,
  }) {
    return BasicBkmInitialize(
      htmlContent: htmlContent ?? this.htmlContent,
      token: token ?? this.token,
    );
  }
}
