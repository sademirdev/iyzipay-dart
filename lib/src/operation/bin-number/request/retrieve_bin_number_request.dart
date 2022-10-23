import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_bin_number_request.g.dart';

/// Todo(sametdmr): Handle documentation
@JsonSerializable(includeIfNull: false)
class RetrieveBinNumberRequest extends Request<RetrieveBinNumberRequest> {
  /// Todo(sametdmr): Handle documentation
  const RetrieveBinNumberRequest({
    super.locale,
    super.conversationId,
    required this.binNumber,
  });

  /// It is the first 6 digits of the card.
  final String binNumber;

  /// Converts [RetrieveBinNumberRequest] to [Map]
  @override
  RetrieveBinNumberRequest fromJson(Map<String, dynamic> json) => _$RetrieveBinNumberRequestFromJson(json);

  /// Converts [Map] to [RetrieveBinNumberRequest]
  @override
  Map<String, dynamic> toJson() => _$RetrieveBinNumberRequestToJson(this);
}
