import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/constants.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/loyalty.dart';
import 'package:iyzipay/src/models/payment_card.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_payment_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreatePaymentRequest extends BaseRequest<CreatePaymentRequest> {
  const CreatePaymentRequest({
    super.locale,
    super.conversationId,
    required this.price,
    required this.paidPrice,
    this.installment = Constants.SINGLE_INSTALLMENT,
    required this.paymentChannel,
    required this.basketId,
    required this.paymentGroup,
    required this.paymentCard,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
    required this.paymentSource,
    required this.currency,
    required this.posOrderId,
    required this.connectorName,
    required this.callbackUrl,
    required this.gsmNumber,
    required this.reward,
  });

  final double price;
  final double paidPrice;
  final int? installment;
  final String paymentChannel;
  final String basketId;
  final String paymentGroup;
  final PaymentCard paymentCard;
  final Buyer buyer;
  final Address shippingAddress;
  final Address billingAddress;
  final List<BasketItem> basketItems;
  final String paymentSource;
  final String currency;
  final String posOrderId;
  final String connectorName;
  final String callbackUrl;
  final String gsmNumber;
  final Loyalty reward;

  @override
  CreatePaymentRequest fromJson(JsonMap json) =>
      _$CreatePaymentRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreatePaymentRequestToJson(this);
}
