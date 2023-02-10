import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_card_black_list_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateCardBlacklistRequest
    extends BaseRequest<CreateCardBlacklistRequest> {
  const CreateCardBlacklistRequest({
    super.locale,
    super.conversationId,
    required this.cardToken,
    required this.cardUserKey,
  });

  final String cardToken;
  final String cardUserKey;

  @override
  CreateCardBlacklistRequest fromJson(JsonMap json) =>
      _$CreateCardBlacklistRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateCardBlacklistRequestToJson(this);
}
