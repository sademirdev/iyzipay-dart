import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_apm_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveApmRequest extends BaseRequest<RetrieveApmRequest> {
  const RetrieveApmRequest({
    super.locale,
    super.conversationId,
    required this.paymentId,
  });

  final String paymentId;

  /// Converts [JsonMap] to [RetrieveApmRequest]
  @override
  RetrieveApmRequest fromJson(JsonMap json) =>
      _$RetrieveApmRequestFromJson(json);

  /// Converts [RetrieveApmRequest] to [JsonMap]
  @override
  JsonMap toJson() => _$RetrieveApmRequestToJson(this);
}
