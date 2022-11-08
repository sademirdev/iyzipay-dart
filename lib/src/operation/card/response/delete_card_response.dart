import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'delete_card_response.g.dart';

///
@JsonSerializable(includeIfNull: false)
class DeleteCardResponse extends Response<DeleteCardResponse> {
  ///
  const DeleteCardResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  @override
  DeleteCardResponse fromJson(Map<String, dynamic> json) => _$DeleteCardResponseFromJson(json);
}
