import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_card_black_list_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveCardBlacklistRequest
    extends BaseRequest<RetrieveCardBlacklistRequest> {
  const RetrieveCardBlacklistRequest({
    super.locale,
    super.conversationId,
    required this.cardNumber,
  });

  final String cardNumber;

  @override
  RetrieveCardBlacklistRequest fromJson(JsonMap json) =>
      _$RetrieveCardBlacklistRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveCardBlacklistRequestToJson(this);
}
