import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/card_information.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_card_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateCardRequest extends BaseRequest<CreateCardRequest> {
  const CreateCardRequest({
    required super.locale,
    required super.conversationId,
    required this.externalId,
    required this.email,
    required this.cardUserKey,
    required this.card,
  });

  final String externalId;
  final String email;
  final String cardUserKey;
  final CardInformation card;

  @override
  CreateCardRequest fromJson(JsonMap json) => _$CreateCardRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateCardRequestToJson(this);
}
