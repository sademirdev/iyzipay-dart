import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_card_black_list_request.dart';
import 'package:iyzipay/src/requests/retrieve_card_black_list_request.dart';
import 'package:iyzipay/src/requests/update_card_black_list_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_black_list.g.dart';

@JsonSerializable(includeIfNull: false)
class CardBlackList extends IyzipayResource {
  const CardBlackList({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.cardUserName,
    this.cardToken,
    this.cardNumber,
    this.blackListed,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? cardUserName;
  final String? cardToken;
  final String? cardNumber;
  final bool? blackListed;

  static Future<CardBlackList?> create({
    required CreateCardBlacklistRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createCardBlackList.path,
      request: request,
      responseModel: const CardBlackList(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<CardBlackList?> update({
    required UpdateCardBlacklistRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.updateCardBlackList.path,
      request: request,
      responseModel: const CardBlackList(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<CardBlackList?> retrieve({
    required RetrieveCardBlacklistRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveCardBlackList.path,
      request: request,
      responseModel: const CardBlackList(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  CardBlackList fromJson(JsonMap json) => _$CardBlackListFromJson(json);

  @override
  JsonMap toJson() => _$CardBlackListToJson(this);
}
