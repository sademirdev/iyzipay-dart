import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/create_card_request.dart';
import 'package:iyzipay/src/requests/delete_card_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card.g.dart';

@JsonSerializable(includeIfNull: false)
class Card extends IyzipayResource {
  const Card({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.externalId,
    this.email,
    this.cardUserKey,
    this.cardToken,
    this.cardAlias,
    this.binNumber,
    this.lastFourDigits,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.cardBankCode,
    this.cardBankName,
    this.cardHolderName,
    this.expireMonth,
    this.expireYear,
    this.metadata,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? externalId;
  final String? email;
  final String? cardUserKey;
  final String? cardToken;
  final String? cardAlias;
  final String? binNumber;
  final String? lastFourDigits;
  final String? cardType;
  final String? cardAssociation;
  final String? cardFamily;
  final int? cardBankCode;
  final String? cardBankName;
  final String? cardHolderName;
  final String? expireMonth;
  final String? expireYear;
  final Map<String, String>? metadata;

  static Future<Card?> create({
    required CreateCardRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createOrDeleteCard.path,
      request: request,
      responseModel: const Card(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<Card?> delete({
    required DeleteCardRequest request,
    required Options options,
  }) async {
    return HttpClient.delete(
      url: options.baseUrl + NetworkPaths.createOrDeleteCard.path,
      request: request,
      responseModel: const Card(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  IyzipayResource fromJson(JsonMap json) => _$CardFromJson(json);

  @override
  JsonMap toJson() => _$CardToJson(this);
}
