import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_card_request.g.dart';

@JsonSerializable(includeIfNull: false)
class DeleteCardRequest extends BaseRequest<DeleteCardRequest> {
  const DeleteCardRequest({
    super.locale,
    super.conversationId,
    required this.cardUserKey,
    required this.cardToken,
  });

  final String cardUserKey;
  final String cardToken;

  @override
  DeleteCardRequest fromJson(JsonMap json) => _$DeleteCardRequestFromJson(json);

  @override
  JsonMap toJson() => _$DeleteCardRequestToJson(this);
}
