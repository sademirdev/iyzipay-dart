import 'package:iyzipay/src/digest_helper.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_basic_payment_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basic_threeds_initialize_pre_auth.g.dart';

@JsonSerializable(includeIfNull: false)
class BasicThreedsInitializePreAuth extends IyzipayResource {
  const BasicThreedsInitializePreAuth({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
    this.htmlContent,
  });

  @JsonKey(name: 'threeDSHtmlContent')
  final String? htmlContent;

  static Future<BasicThreedsInitializePreAuth?> create({
    required CreateBasicPaymentRequest request,
    required Options options,
  }) async {
    final resp = await HttpClient.post(
      url: options.baseUrl +
          NetworkPaths.createBasicThreedsInitializePreAuth.path,
      request: request,
      responseModel: const BasicThreedsInitializePreAuth(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
    if (resp != null) {
      resp.copyWith(htmlContent: DigestHelper.decodeString(resp.htmlContent));
    }
    return resp;
  }

  @override
  IyzipayResource fromJson(JsonMap json) =>
      _$BasicThreedsInitializePreAuthFromJson(json);

  @override
  JsonMap toJson() => _$BasicThreedsInitializePreAuthToJson(this);

  BasicThreedsInitializePreAuth copyWith({
    String? htmlContent,
  }) {
    return BasicThreedsInitializePreAuth(
      htmlContent: htmlContent ?? this.htmlContent,
    );
  }
}
