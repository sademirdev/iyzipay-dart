import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_bkm_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveBkmRequest extends BaseRequest<RetrieveBkmRequest> {
  const RetrieveBkmRequest({
    super.locale,
    super.conversationId,
    required this.token,
  });

  final String token;

  @override
  RetrieveBkmRequest fromJson(JsonMap json) =>
      _$RetrieveBkmRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveBkmRequestToJson(this);
}
