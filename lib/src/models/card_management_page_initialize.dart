import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_card_management_page_initialize_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_management_page_initialize.g.dart';

@JsonSerializable(includeIfNull: false)
class CardManagementPageInitialize extends IyzipayResource {
  const CardManagementPageInitialize({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.externalId,
    this.token,
    this.cardPageUrl,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? externalId;
  final String? token;
  final String? cardPageUrl;

  static Future<CardManagementPageInitialize?> create({
    required CreateCardManagementPageInitializeRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl +
          NetworkPaths.createCardManagementPageInitialize.path,
      request: request,
      responseModel: const CardManagementPageInitialize(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  IyzipayResource fromJson(JsonMap json) =>
      _$CardManagementPageInitializeFromJson(json);

  @override
  JsonMap toJson() => _$CardManagementPageInitializeToJson(this);
}
