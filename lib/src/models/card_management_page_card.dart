import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/card.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_card_management_page_card_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_management_page_card.g.dart';

@JsonSerializable(includeIfNull: false)
class CardManagementPageCard extends IyzipayResource {
  const CardManagementPageCard({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.externalId,
    this.cardUserKey,
    this.cardDetails,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? externalId;
  final String? cardUserKey;
  final List<Card>? cardDetails;

  static Future<CardManagementPageCard?> retrieve({
    required RetrieveCardManagementPageCardRequest request,
    required Options options,
  }) async {
    return HttpClient.get(
      url: prepareRetrieveCardManagementPageCardRequest(
        request: request,
        options: options,
      ),
      responseModel: const CardManagementPageCard(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static String prepareRetrieveCardManagementPageCardRequest({
    required RetrieveCardManagementPageCardRequest request,
    required Options options,
  }) {
    return '${options.baseUrl}/v1/card-management/pages/${request.pageToken}/cards?locale=${request.locale?.value}&conversationId=${request.conversationId}';
  }

  @override
  CardManagementPageCard fromJson(JsonMap json) =>
      _$CardManagementPageCardFromJson(json);

  @override
  JsonMap toJson() => _$CardManagementPageCardToJson(this);
}
