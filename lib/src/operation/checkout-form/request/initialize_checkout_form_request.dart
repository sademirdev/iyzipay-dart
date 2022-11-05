import 'package:iyzipay/src/enum/currency.dart';
import 'package:iyzipay/src/enum/payment_group.dart';
import 'package:iyzipay/src/interface/request.dart';
import 'package:iyzipay/src/model/address.dart';
import 'package:iyzipay/src/model/basket_item.dart';
import 'package:iyzipay/src/model/buyer.dart';
import 'package:json_annotation/json_annotation.dart';

part 'initialize_checkout_form_request.g.dart';

///
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class InitializeCheckoutFormRequest extends Request<InitializeCheckoutFormRequest> {
  ///
  const InitializeCheckoutFormRequest({
    super.locale,
    super.conversationId,
    required this.price,
    this.basketId,
    this.paymentGroup,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
    required this.callbackUrl,
    this.paymentSource,
    required this.currency,
    this.posOrderId,
    required this.paidPrice,
    this.forceThreeDS,
    this.cardUserKey,
    required this.enabledInstallments,
  });

  /// Payment cart amount. The total of the breakdown amounts must be equal to the basket amount.
  ///
  /// {@macro utils_format_price_warming}
  final String price;

  /// Merchant cart id.
  final String? basketId;

  /// The payment group is the default `PRODUCT`.
  ///
  /// Valid values are presented in enum: `PRODUCT`, `LISTING`, `SUBSCRIPTION`
  final PaymentGroup? paymentGroup;

  ///
  final Buyer buyer;

  ///
  final Address shippingAddress;

  ///
  final Address billingAddress;

  ///
  final List<BasketItem> basketItems;

  /// The URL address obtained to notify the merchant of the successful or
  /// incorrect result in the payment flow.
  final String callbackUrl;

  ///
  final String? paymentSource;

  /// Currency unit. The default value is `TL`. Other available values are
  /// `USD`, `EUR`, `GBP` and `IRR` etc.
  final Currency currency;

  ///
  final String? posOrderId;

  /// Amount before interest, including discounts, taxes, etc.
  ///
  /// {@macro utils_format_price_warming}
  final String paidPrice;

  ///
  final bool? forceThreeDS;

  ///
  final String? cardUserKey;

  /// Installment information must be sent `1` for a single withdrawal.
  ///
  /// Valid values: `1`, `2`, `3`, `6`, `9`.
  final List<int> enabledInstallments;

  /// Converts [InitializeCheckoutFormRequest] to [Map]
  @override
  InitializeCheckoutFormRequest fromJson(Map<String, dynamic> json) => _$InitializeCheckoutFormRequestFromJson(json);

  /// Converts [Map] to [InitializeCheckoutFormRequest]
  @override
  Map<String, dynamic> toJson() => _$InitializeCheckoutFormRequestToJson(this);
}
