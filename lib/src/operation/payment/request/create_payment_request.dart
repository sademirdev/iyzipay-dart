import 'package:iyzipay/src/enum/currency.dart';
import 'package:iyzipay/src/enum/payment_channel.dart';
import 'package:iyzipay/src/enum/payment_group.dart';
import 'package:iyzipay/src/interface/request.dart';
import 'package:iyzipay/src/model/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_payment_request.g.dart';

/// {@template create_payment_request}
///
/// The payment query makes a withdrawal from the customer's credit card.
///
/// When the relevant service is used, iyzico will instantly reply
/// whether the transaction was successful or not.
///
/// - It allows the production of cards with `TROY`, `MASTERCARD`, `VISA`, `AMEX` logos on them.
///
/// - 2, 3, 6, 9, 12 installment options for cards
/// included in `BONUS`, `WORLD`, `MAXIMUM`, `AXESS`, `CARDFINANS`, `PARAF`, `ADVANTAGE`
/// installment programs can be used with this service.
///
/// - Successful transactions can be displayed on the panel in green
/// and unsuccessful transactions in red.
///
/// - `ConversationId` and `basketId` parameters can be used as
/// order number on the merchant side.
///
/// {@endtemplate}
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CreatePaymentRequest extends Request<CreatePaymentRequest> {
  /// {@macro create_payment_request}
  const CreatePaymentRequest({
    super.locale,
    super.conversationId,
    required this.price,
    required this.paidPrice,
    required this.installment,
    this.paymentChannel,
    this.basketId,
    this.paymentGroup,
    required this.paymentCard,
    required this.buyer,
    required this.shippingAddress,
    required this.billingAddress,
    required this.basketItems,
    required this.currency,
  });

  /// Payment cart amount. The sum of the breakdown
  /// (products in the basket) amounts must be equal to the basket amount.
  ///
  /// {@template utils_format_price_warming}
  /// > Warning: Use `Utils.formatPrice` method with all `price` parameters with in Requests.
  /// {@endtemplate}
  final String price;

  /// The discount will be realized in the future from the POS
  /// calculated with the interest. The price is worth
  /// it can be less than, greater or equal.
  ///
  /// {@macro utils_format_price_warming}
  final String paidPrice;

  /// Installment information must be sent `1` for a single withdrawal.
  /// Valid values: `1`, `2`, `3`, `6`, `9`, `12`
  final int installment;

  /// Payment channel. Valid values are presented in enum: `WEB`, `MOBILE`,
  /// `MOBILE_WEB`, `MOBILE_IOS`, `MOBILE_ANDROID`, `MOBILE_WINDOWS`, `MOBILE_TABLET`, `MOBILE_PHONE`
  final PaymentChannel? paymentChannel;

  /// It is the id used by the merchant to identify the basket of
  /// the relevant payment. It can be an order number or a meaningful value.
  final String? basketId;

  /// The payment group is the default `PRODUCT`. Valid values are presented
  /// in the enum: `PRODUCT`, `LISTING`, `SUBSCRIPTION`, `OTHER`.
  final PaymentGroup? paymentGroup;

  ///
  final PaymentCard paymentCard;

  ///
  final Buyer buyer;

  ///
  final Address shippingAddress;

  ///
  final Address billingAddress;

  ///
  final List<BasketItem> basketItems;

  /// {@template currency}
  /// The currency in which the payment will be taken is determined as
  /// the default `TL`. Make sure that the shopping is defined in your account
  /// with different currencies such as `USD`, `EUR`, `GBP` for other values.
  /// {@endtemplate}
  final Currency currency;

  /// Converts [Map] to [CreatePaymentRequest]
  @override
  CreatePaymentRequest fromJson(Map<String, dynamic> json) => _$CreatePaymentRequestFromJson(json);

  /// Converts [CreatePaymentRequest] to [Map]
  @override
  Map<String, dynamic> toJson() => _$CreatePaymentRequestToJson(this);
}
