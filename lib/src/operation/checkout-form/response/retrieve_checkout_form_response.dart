import 'package:iyzipay/src/enum/card_association.dart';
import 'package:iyzipay/src/enum/card_type.dart';
import 'package:iyzipay/src/enum/currency.dart';
import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:iyzipay/src/model/item_transaction.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_checkout_form_response.g.dart';

///
@JsonSerializable(includeIfNull: false)
class RetrieveCheckoutFormResponse extends Response<RetrieveCheckoutFormResponse> {
  ///
  const RetrieveCheckoutFormResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.price,
    this.paidPrice,
    this.installment,
    this.paymentId,
    this.fraudStatus,
    this.merchantCommissionRate,
    this.merchantCommissionRateAmount,
    this.iyziCommissionRateAmount,
    this.iyziCommissionFee,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.binNumber,
    this.lastFourDigits,
    this.basketId,
    this.currency,
    this.itemTransactions,
    this.token,
    this.callbackUrl,
    this.paymentStatus,
    this.mdStatus,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  /// Payment cart amount. The total of the breakdown amounts must be equal to the basket amount.
  final double? price;

  /// Discount interest etc. the final amount charged, passed through the calculated POS.
  final double? paidPrice;

  /// The installment information of the payment returns `1` for a single withdrawal.
  ///
  /// Valid values: `1`, `2`, `3`, `6`, `9`, `12`
  final int? installment;

  /// The id of the payment must be kept by the merchant.
  /// It is used for cancellation of payment and communication with iyzico.
  final String? paymentId;

  /// Status of the payment transaction according to fraud filters. If the fraud
  /// risk score of the payment is low, the payment is immediately approved,
  /// in this case the value `1` is returned. If the fraud risk score is high,
  /// the payment transaction is rejected and `-1` is returned.
  /// Returns `0` if the payment transaction is to be reviewed and decided later.
  ///
  /// Valid values are: `0`, `-1` and `1`. The merchant should ship the product
  /// only for transactions with 1, and wait for notification for transactions with 0.
  final int? fraudStatus;

  /// Term/commission rate applied by the member merchant. For example,
  /// if `price=100`, `paidPrice=110`, the merchant maturity/commission rate
  /// is `10%`. It is for information purposes.
  final double? merchantCommissionRate;

  /// Term/commission amount applied by the merchant. For example, if `price=100`,
  /// `paidPrice=110`, the merchant maturity/commission amount is `10`. It is for information purposes.
  final double? merchantCommissionRateAmount;

  /// iyzico transaction commission amount of the payment.
  final double? iyziCommissionRateAmount;

  /// iyzico transaction fee for the payment.
  final double? iyziCommissionFee;

  /// If the paid card is a local card, the type to which the card belongs.
  ///
  /// Valid values: `CREDIT_CARD`, `DEBIT_CARD`, `PREPAID_CARD`
  final CardType? cardType;

  /// If the paid card is a local card, the entity to which the card belongs.
  ///
  /// Valid values: `VISA`, `MASTER_CARD`, `AMERICAN_EXPRESS`, `TROY`
  final CardAssociation? cardAssociation;

  /// If the paid card is a local card, the family to which the card belongs.
  ///
  /// Valid values: `Bonus`, `Axess`, `World`, `Maximum`, `Paraf`, `CardFinans`, `Advantage`
  final String? cardFamily;

  /// The first 6 digits of the paid card.
  final String? binNumber;

  /// The last 4 digits of the paid card.
  final String? lastFourDigits;

  /// Basket id sent by the merchant.
  final String? basketId;

  /// The currency in which the payment was received.
  final Currency? currency;

  ///
  final List<ItemTransaction?>? itemTransactions;

  /// Unique value generated for the checkout form. It is specially produced
  /// for each request and returned to the workplace.
  ///
  /// It is a required field to find out the result of the payment.
  final String? token;

  /// The URL address obtained to notify the merchant of the successful or incorrect result in the payment flow.
  final String? callbackUrl;

  /// Indicates the status of the payment request.
  ///
  /// If successful, the relevant amount has been withdrawn from the card.
  /// `SUCCESS`, `FAILURE`, `INIT_THREEDS`, `CALLBACK_THREEDS`, `BKM_POS_SELECTED`, `CALLBACK_PECCO`
  final String? paymentStatus;

  /// It is the return value from the bank.
  /// This value is returned only if the payment was unsuccessful and the
  /// transaction was made with 3ds.
  ///
  /// It can take the values `0`, `2`, `3`, `4`, `5`, `6`, `7`.
  final String? mdStatus;

  @override
  RetrieveCheckoutFormResponse fromJson(Map<String, dynamic> json) => _$RetrieveCheckoutFormResponseFromJson(json);
}
