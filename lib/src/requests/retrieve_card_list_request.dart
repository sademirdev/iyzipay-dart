import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_card_list_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveCardListRequest extends BaseRequest<RetrieveCardListRequest> {
  const RetrieveCardListRequest({
    required this.cardUserKey,
  });

  final String cardUserKey;

  @override
  RetrieveCardListRequest fromJson(JsonMap json) =>
      _$RetrieveCardListRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveCardListRequestToJson(this);
}
