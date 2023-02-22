import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_card_management_page_card_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveCardManagementPageCardRequest
    extends BaseRequest<RetrieveCardManagementPageCardRequest> {
  const RetrieveCardManagementPageCardRequest({
    super.locale,
    super.conversationId,
    required this.pageToken,
  });

  final String pageToken;

  @override
  RetrieveCardManagementPageCardRequest fromJson(JsonMap json) =>
      _$RetrieveCardManagementPageCardRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveCardManagementPageCardRequestToJson(this);
}
