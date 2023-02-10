import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_card_management_page_initialize_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateCardManagementPageInitializeRequest
    extends BaseRequest<CreateCardManagementPageInitializeRequest> {
  const CreateCardManagementPageInitializeRequest({
    super.locale,
    super.conversationId,
    required this.addNewCardEnabled,
    required this.validateNewCard,
    required this.externalId,
    required this.email,
    required this.cardUserKey,
    required this.callbackUrl,
    required this.debitCardAllowed,
  });

  final bool addNewCardEnabled;
  final bool validateNewCard;
  final String externalId;
  final String email;
  final String cardUserKey;
  final String callbackUrl;
  final bool debitCardAllowed;

  @override
  CreateCardManagementPageInitializeRequest fromJson(JsonMap json) =>
      _$CreateCardManagementPageInitializeRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateCardManagementPageInitializeRequestToJson(this);
}
