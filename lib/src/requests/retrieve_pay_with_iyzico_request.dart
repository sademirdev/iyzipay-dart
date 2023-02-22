import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_pay_with_iyzico_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrievePayWithIyzicoRequest
    extends BaseRequest<RetrievePayWithIyzicoRequest> {
  const RetrievePayWithIyzicoRequest({
    super.locale,
    super.conversationId,
    required this.token,
  });

  final String token;

  @override
  RetrievePayWithIyzicoRequest fromJson(JsonMap json) =>
      _$RetrievePayWithIyzicoRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrievePayWithIyzicoRequestToJson(this);
}
