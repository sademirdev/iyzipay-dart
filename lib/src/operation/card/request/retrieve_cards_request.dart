import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_cards_request.g.dart';

/// You can query a user's cards at iyzico.
@JsonSerializable(includeIfNull: false)
class RetrieveCardsRequest extends Request<RetrieveCardsRequest> {
  /// You can query a user's cards at iyzico.
  const RetrieveCardsRequest({
    super.locale,
    super.conversationId,
    required this.cardUserKey,
  });

  /// The value of the hidden card user determined by iyzico.
  final String cardUserKey;

  @override
  RetrieveCardsRequest fromJson(Map<String, dynamic> json) => _$RetrieveCardsRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RetrieveCardsRequestToJson(this);
}
