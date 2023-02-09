import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_bin_number_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveBinNumberRequest extends BaseRequest<RetrieveBinNumberRequest> {
  const RetrieveBinNumberRequest({
    super.locale,
    super.conversationId,
    required this.binNumber,
  });

  final String binNumber;

  @override
  RetrieveBinNumberRequest fromJson(JsonMap json) =>
      _$RetrieveBinNumberRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveBinNumberRequestToJson(this);
}
