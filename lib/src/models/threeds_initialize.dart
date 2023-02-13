import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/digest_helper.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/requests/create_payment_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'threeds_initialize.g.dart';

@JsonSerializable(includeIfNull: false)
class ThreedsInitialize extends IyzipayResource {
  const ThreedsInitialize({
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

  static Future<ThreedsInitialize?> create({
    required CreatePaymentRequest request,
    required Options options,
  }) async {
    final resp = await HttpClient.post(
      url: options.baseUrl + NetworkPaths.createThreedsInitialize.path,
      request: request,
      responseModel: const ThreedsInitialize(),
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
  ThreedsInitialize fromJson(JsonMap json) => _$ThreedsInitializeFromJson(json);

  @override
  JsonMap toJson() => _$ThreedsInitializeToJson(this);

  ThreedsInitialize copyWith({
    String? htmlContent,
  }) {
    return ThreedsInitialize(
      htmlContent: htmlContent ?? this.htmlContent,
    );
  }
}
