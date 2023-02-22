import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_threeds_payment_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateThreedsPaymentRequest
    extends BaseRequest<CreateThreedsPaymentRequest> {
  const CreateThreedsPaymentRequest({
    super.locale,
    super.conversationId,
    required this.paymentId,
    required this.conversationData,
  });

  final String paymentId;
  final String conversationData;

  @override
  CreateThreedsPaymentRequest fromJson(JsonMap json) =>
      _$CreateThreedsPaymentRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateThreedsPaymentRequestToJson(this);
}
