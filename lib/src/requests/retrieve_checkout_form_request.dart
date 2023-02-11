import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_checkout_form_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveCheckoutFormRequest
    extends BaseRequest<RetrieveCheckoutFormRequest> {
  const RetrieveCheckoutFormRequest({
    super.locale,
    super.conversationId,
    required this.token,
  });

  final String token;

  @override
  RetrieveCheckoutFormRequest fromJson(JsonMap json) =>
      _$RetrieveCheckoutFormRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveCheckoutFormRequestToJson(this);
}
