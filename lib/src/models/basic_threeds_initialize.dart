import 'package:iyzipay/src/digest_helper.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_basic_payment_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basic_threeds_initialize.g.dart';

@JsonSerializable(includeIfNull: false)
class BasicThreedsInitialize extends IyzipayResource {
  const BasicThreedsInitialize({
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

  static Future<BasicThreedsInitialize?> create({
    required CreateBasicPaymentRequest request,
    required Options options,
  }) async {
    final resp = await HttpClient.post(
      url: options.baseUrl + NetworkPaths.createBasicThreedsInitialize.path,
      request: request,
      responseModel: const BasicThreedsInitialize(),
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
  IyzipayResource fromJson(JsonMap json) =>
      _$BasicThreedsInitializeFromJson(json);

  @override
  JsonMap toJson() => _$BasicThreedsInitializeToJson(this);

  BasicThreedsInitialize copyWith({
    String? htmlContent,
  }) {
    return BasicThreedsInitialize(
      htmlContent: htmlContent ?? this.htmlContent,
    );
  }
}
