import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/constants.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/payment_card.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_basic_payment_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateBasicPaymentRequest extends BaseRequest<CreateBasicPaymentRequest> {
  const CreateBasicPaymentRequest({
    super.locale,
    super.conversationId,
    required this.price,
    required this.paidPrice,
    this.installment = Constants.SINGLE_INSTALLMENT,
    required this.buyerEmail,
    required this.buyerId,
    required this.buyerIp,
    required this.posOrderId,
    required this.paymentCard,
    required this.currency,
    required this.connectorName,
    required this.callbackUrl,
  });

  final double price;
  final double paidPrice;
  final int? installment;
  final String buyerEmail;
  final String buyerId;
  final String buyerIp;
  final String posOrderId;
  final PaymentCard paymentCard;
  final String currency;
  final String connectorName;
  final String callbackUrl;

  @override
  CreateBasicPaymentRequest fromJson(JsonMap json) =>
      _$CreateBasicPaymentRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateBasicPaymentRequestToJson(this);
}
