import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_bin_number_request.g.dart';

///
@JsonSerializable(includeIfNull: false)
class RetrieveBinNumberRequest extends Request<RetrieveBinNumberRequest> {
  ///
  RetrieveBinNumberRequest({
    super.locale,
    super.conversationId,
    required this.binNumber,
  });

  ///
  final String binNumber;

  @override
  RetrieveBinNumberRequest fromJson(Map<String, dynamic> json) => _$RetrieveBinNumberRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RetrieveBinNumberRequestToJson(this);
}
