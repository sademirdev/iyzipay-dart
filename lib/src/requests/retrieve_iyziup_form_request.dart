import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_iyziup_form_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveIyziupFormRequest extends BaseRequest<RetrieveIyziupFormRequest> {
  const RetrieveIyziupFormRequest({
    super.locale,
    super.conversationId,
    required this.token,
  });

  final String token;

  @override
  RetrieveIyziupFormRequest fromJson(JsonMap json) =>
      _$RetrieveIyziupFormRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveIyziupFormRequestToJson(this);
}
