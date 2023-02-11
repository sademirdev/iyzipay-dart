import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_checkout_form_initialize_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateCheckoutFormInitializeRequest
    extends BaseRequest<CreateCheckoutFormInitializeRequest> {
  const CreateCheckoutFormInitializeRequest({
    super.locale,
    super.conversationId,
    required this.price,
    required this.paidPrice,
    required this.basketId,
    required this.paymentGroup,
    required this.paymentSource,
    required this.currency,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
    required this.callbackUrl,
    this.forceThreeDS,
    required this.cardUserKey,
    required this.posOrderId,
    required this.enabledInstallments,
    required this.debitCardAllowed,
    required this.paymentWithNewCardEnabled,
    required this.subscriptionPaymentEnabled,
    required this.payWithIyzico,
  });

  final double price;
  final double paidPrice;
  final String basketId;
  final PaymentGroup paymentGroup;
  final String paymentSource;
  final Currency currency;
  final Buyer buyer;
  final Address shippingAddress;
  final Address billingAddress;
  final List<BasketItem> basketItems;
  final String callbackUrl;
  final int? forceThreeDS;
  final String cardUserKey;
  final String posOrderId;
  final List<int> enabledInstallments;
  final bool debitCardAllowed;
  final bool paymentWithNewCardEnabled;
  final bool subscriptionPaymentEnabled;
  final bool payWithIyzico;

  @override
  CreateCheckoutFormInitializeRequest fromJson(JsonMap json) =>
      _$CreateCheckoutFormInitializeRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateCheckoutFormInitializeRequestToJson(this);
}
