import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/card.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_card_list_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_list.g.dart';

@JsonSerializable(includeIfNull: false)
class CardList extends IyzipayResource {
  const CardList({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.cardUserKey,
    this.cardDetails,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? cardUserKey;
  final List<Card>? cardDetails;

  static Future<CardList?> retrieve({
    required RetrieveCardListRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveCardList.path,
      request: request,
      responseModel: const CardList(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  CardList fromJson(JsonMap json) => _$CardListFromJson(json);

  @override
  JsonMap toJson() => _$CardListToJson(this);
}
