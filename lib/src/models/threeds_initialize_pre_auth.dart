import 'package:iyzipay/src/digest_helper.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_payment_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'threeds_initialize_pre_auth.g.dart';

@JsonSerializable(includeIfNull: false)
class ThreedsInitializePreAuth extends IyzipayResource {
  const ThreedsInitializePreAuth({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.htmlContent,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @JsonKey(name: 'threeDSHtmlContent')
  final String? htmlContent;

  static Future<ThreedsInitializePreAuth?> create({
    required CreatePaymentRequest request,
    required Options options,
  }) async {
    final resp = await HttpClient.post(
      url: options.baseUrl + NetworkPaths.createThreedsInitializePreAuth.path,
      request: request,
      responseModel: const ThreedsInitializePreAuth(),
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
  ThreedsInitializePreAuth fromJson(JsonMap json) =>
      _$ThreedsInitializePreAuthFromJson(json);

  @override
  JsonMap toJson() => _$ThreedsInitializePreAuthToJson(this);

  ThreedsInitializePreAuth copyWith({
    String? htmlContent,
  }) {
    return ThreedsInitializePreAuth(
      htmlContent: htmlContent ?? this.htmlContent,
    );
  }
}
