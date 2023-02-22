import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_card_black_list_request.g.dart';

@JsonSerializable(includeIfNull: false)
class UpdateCardBlacklistRequest
    extends BaseRequest<UpdateCardBlacklistRequest> {
  const UpdateCardBlacklistRequest({
    super.locale,
    super.conversationId,
    required this.cardToken,
    required this.cardUserKey,
  });

  final String cardToken;
  final String cardUserKey;

  @override
  UpdateCardBlacklistRequest fromJson(JsonMap json) =>
      _$UpdateCardBlacklistRequestFromJson(json);

  @override
  JsonMap toJson() => _$UpdateCardBlacklistRequestToJson(this);
}
