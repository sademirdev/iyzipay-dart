import 'package:iyzipay/src/enum/card_association.dart';
import 'package:iyzipay/src/enum/card_type.dart';
import 'package:iyzipay/src/enum/currency.dart';
import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:iyzipay/src/model/item_transaction.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_payment_response.g.dart';

/// {@template create_payment_response}
///
/// - The status parameter gives information about the status of the process.
/// `success` means that the transaction has been made successfully and the money
/// has been withdrawn. `failure` means that the operation has failed and error
/// notification has been made regarding the reason.
///
/// - `paymentStatus` comes as null for this service.
///
/// - The `paymentId` and `paymentTransactionId` values must be kept.
///
/// - If the process ended with `failure` status, `errorCode`, `errorMessage`,
/// `errorGroup` parameters will return with values.
///
/// {@endtemplate}

@JsonSerializable(includeIfNull: false)
class CreatePaymentResponse extends Response<CreatePaymentResponse> {
  /// {@macro create_payment_response}
  const CreatePaymentResponse({
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
    this.authCode,
    this.phase,
    this.hostReference,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  /// Payment cart amount.
  /// The total of the breakdown amounts must be equal to the basket amount.
  final double? price;

  /// Discount interest etc. the final amount charged,
  /// passed through the calculated POS.
  final double? paidPrice;

  /// The installment information of the payment returns `1` for a single withdrawal.
  ///
  /// Valid values: `1`, `2`, `3`, `6`, `9`.
  final int? installment;

  /// The id of the payment must be kept by the merchant.
  ///
  /// It is used for cancellation of payment and communication with iyzico.
  final String? paymentId;

  /// Status of the payment transaction according to fraud filters.
  /// If the fraud risk score of the payment is low, the payment is immediately
  /// approved, in this case the value `1` is returned.
  ///
  /// If the fraud risk score is high, the payment transaction is rejected and
  /// -1 is returned. Returns 0 if the payment transaction is to be reviewed
  /// and decided later.
  ///
  /// Valid values are: `0`, `-1` and `1`.
  ///
  /// The merchant should ship the product only for transactions with `1`, and
  /// wait for notification for transactions with `0`.
  final int? fraudStatus;

  /// Maturity/commission rate applied by the member merchant.
  /// For example, if `price=100`, `paidPrice=110`, the merchant maturity/commission
  /// rate is 10%. It is for information purposes.
  final double? merchantCommissionRate;

  /// Maturity/commission amount applied by the merchant.
  /// For example, if `price=100`, `paidPrice=110`, the merchant maturity/commission
  /// amount is 10. It is for information purposes.
  final double? merchantCommissionRateAmount;

  /// iyzico transaction commission amount of the payment.
  final double? iyziCommissionRateAmount;

  /// iyzico transaction fee for the payment.
  final double? iyziCommissionFee;

  /// If the paid card is a local card, the type to which the card belongs.
  ///
  /// Valid values: `CREDIT_CARD`, `DEBIT_CARD`, `PREPAID_CARD`.
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

  /// The Last Four Digits of the paid card.
  final String? lastFourDigits;

  /// Basket id sent by the merchant.
  final String? basketId;

  /// The currency in which the payment was received.
  final Currency? currency;

  ///
  final List<ItemTransaction?>? itemTransactions;

  ///
  final String? authCode;

  ///
  final String? phase;

  ///
  final String? hostReference;

  /// Converts [Map] to [CreatePaymentResponse]
  @override
  CreatePaymentResponse fromJson(Map<String, dynamic> json) => _$CreatePaymentResponseFromJson(json);
}
