import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_transactions_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveTransactionsRequest
    extends BaseRequest<RetrieveTransactionsRequest> {
  const RetrieveTransactionsRequest({
    super.locale,
    super.conversationId,
    required this.date,
  });

  final String date;

  @override
  RetrieveTransactionsRequest fromJson(JsonMap json) =>
      _$RetrieveTransactionsRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveTransactionsRequestToJson(this);
}
