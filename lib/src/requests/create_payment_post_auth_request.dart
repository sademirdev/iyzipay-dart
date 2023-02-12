import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_payment_post_auth_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatePaymentPostAuthRequest
    extends BaseRequest<CreatePaymentPostAuthRequest> {
  const CreatePaymentPostAuthRequest({
    super.locale,
    super.conversationId,
    required this.paymentId,
    required this.paidPrice,
    required this.ip,
    required this.currency,
  });

  final String paymentId;
  final double paidPrice;
  final String ip;
  final Currency currency;

  @override
  CreatePaymentPostAuthRequest fromJson(JsonMap json) =>
      _$CreatePaymentPostAuthRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreatePaymentPostAuthRequestToJson(this);
}
