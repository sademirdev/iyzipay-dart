import 'package:iyzipay/src/enum/card_association.dart';
import 'package:iyzipay/src/enum/card_type.dart';
import 'package:iyzipay/src/enum/currency.dart';
import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
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

///
@JsonSerializable(includeIfNull: false)
class ItemTransaction {
  ///
  const ItemTransaction({
    this.itemId,
    this.paymentTransactionId,
    this.transactionStatus,
    this.price,
    this.paidPrice,
    this.merchantCommissionRate,
    this.merchantCommissionRateAmount,
    this.iyziCommissionRateAmount,
    this.iyziCommissionFee,
    this.blockageRate,
    this.blockageRateAmountMerchant,
    this.blockageRateAmountSubMerchant,
    this.blockageResolvedDate,
    this.subMerchantPrice,
    this.subMerchantPayoutRate,
    this.subMerchantPayoutAmount,
    this.merchantPayoutAmount,
    this.convertedPayout,
  });

  /// Converts [Map] to [ItemTransaction]
  factory ItemTransaction.fromJson(Map<String, dynamic> json) => _$ItemTransactionFromJson(json);

  /// The id of the product in the basket transmitted by the merchant.
  final String? itemId;

  /// The id of the transaction must be kept by the merchant.
  ///
  /// It is used for refund of transaction, approval, withdrawal
  /// of approval and communication with iyzico.
  ///
  /// It should preferably be kept in relation to the `itemId`.
  final String? paymentTransactionId;

  /// The status of the transaction. In the payment `fraud` control,
  /// the value 0 is returned, in this case the `fraudStatus` value is also `0`.
  ///
  /// Returns `-1` if the payment is rejected after the `fraud` check.
  /// In the marketplace model, this value returns `1` until the product is approved.
  /// If the product is approved in the marketplace model, this value will be `2`.
  ///
  /// Valid values: `0`, `-1`, `1`, `2`.
  final int? transactionStatus;

  /// The amount of the product in the basket on the merchant side.
  final double? price;

  /// Distribution of the collection amount on the basis of breakdown.
  /// It must be kept by the member workplace.
  final double? paidPrice;

  /// Prices of maturity/commission schools are distributed on a breakdown basis.
  final double? merchantCommissionRate;

  /// Distributed amount of the maturity/commission amount applied by
  /// the member merchant on the basis of breakdown.
  final double? merchantCommissionRateAmount;

  /// Distributed amount of iyzico transaction commission amount on a breakdown basis.
  final double? iyziCommissionRateAmount;

  /// Distributed amount of iyzico transaction fee based on breakdown.
  final double? iyziCommissionFee;

  /// Blockage rate of member merchants on the basis of breakdown.
  /// According to the iyzico – member merchant agreement, a member may apply
  /// a blockage to the merchant on a transaction basis. This blockage is to
  /// prevent the risk of member merchant fraud. During the blockage period,
  /// the money is kept at iyzico, after which it is sent to the merchant.
  final double? blockageRate;

  /// The amount of the member merchant blockage amount reflected to the member
  /// merchant on a breakdown basis. The amount of the blockage is reflected to
  /// the merchant as much as possible. If the blockage amount is greater than
  /// the member merchant amount, then it will also be reflected to the sub-merchant.
  final double? blockageRateAmountMerchant;

  ///
  final int? blockageRateAmountSubMerchant;

  /// Unblocking date on a per transaction basis.
  ///
  /// `yyyy-MM-dd` is in the format `HH:mm:ss`, for example `2015-10-19 14:36:52`.
  final String? blockageResolvedDate;

  ///
  final int? subMerchantPrice;

  ///
  final double? subMerchantPayoutRate;

  ///
  final int? subMerchantPayoutAmount;

  /// For this breakdown, the amount to be sent to the member merchant after
  /// deducting the iyzico transaction fee, commission amount and blockages.
  final double? merchantPayoutAmount;

  ///
  final ConvertedPayout? convertedPayout;
}

///
@JsonSerializable(includeIfNull: false)
class ConvertedPayout {
  ///
  const ConvertedPayout({
    this.paidPrice,
    this.iyziCommissionRateAmount,
    this.iyziCommissionFee,
    this.blockageRateAmountMerchant,
    this.blockageRateAmountSubMerchant,
    this.subMerchantPayoutAmount,
    this.merchantPayoutAmount,
    this.iyziConversionRate,
    this.iyziConversionRateAmount,
    this.currency,
  });

  /// Converts [Map] to [ConvertedPayout]
  factory ConvertedPayout.fromJson(Map<String, dynamic> json) => _$ConvertedPayoutFromJson(json);

  /// Distribution of the collection amount on the basis of breakdown.
  /// It must be kept by the member workplace.
  final double? paidPrice;

  /// Distributed amount of iyzico transaction commission amount on the basis of breakdown
  final double? iyziCommissionRateAmount;

  /// Distributed amount of iyzico transaction fee based on breakdown.
  final double? iyziCommissionFee;

  /// The amount of the member merchant blockage amount reflected to the member
  /// merchant on a breakdown basis. The amount of the blockage is reflected
  /// to the merchant as much as possible. If the blockage amount is greater
  /// than the member merchant amount, then it will also be reflected to the sub-merchant.
  final double? blockageRateAmountMerchant;

  ///
  final double? blockageRateAmountSubMerchant;

  ///
  final double? subMerchantPayoutAmount;

  /// For this breakdown, the amount to be sent to the member merchant after
  /// deducting the iyzico transaction fee, commission amount and blockages.
  final double? merchantPayoutAmount;

  ///
  final int? iyziConversionRate;

  ///
  final int? iyziConversionRateAmount;

  /// The currency in which the payment was received.
  final Currency? currency;
}
