import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_card_request.g.dart';

///
@JsonSerializable(includeIfNull: false)
class DeleteCardRequest extends Request<DeleteCardRequest> {
  ///
  const DeleteCardRequest({
    super.locale,
    super.conversationId,
    required this.cardUserKey,
    required this.cardToken,
  });

  /// The value of the hidden card user determined by iyzico.
  final String cardUserKey;

  /// The value of the hidden card determined by iyzico connected to the hidden card user.
  final String cardToken;

  /// Converts [DeleteCardRequest] to [Map]
  @override
  DeleteCardRequest fromJson(Map<String, dynamic> json) => _$DeleteCardRequestFromJson(json);

  /// Converts [Map] to [DeleteCardRequest]
  @override
  Map<String, dynamic> toJson() => _$DeleteCardRequestToJson(this);
}
