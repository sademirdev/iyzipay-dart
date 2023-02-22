import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_payment_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrievePaymentRequest extends BaseRequest<RetrievePaymentRequest> {
  const RetrievePaymentRequest({
    required this.paymentId,
    required this.paymentConversationId,
  });

  final String paymentId;
  final String paymentConversationId;

  @override
  RetrievePaymentRequest fromJson(JsonMap json) =>
      _$RetrievePaymentRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrievePaymentRequestToJson(this);
}
