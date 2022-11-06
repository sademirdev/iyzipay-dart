import 'package:iyzipay/src/model/converted_payout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_transaction.g.dart';

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
  final double? blockageRateAmountSubMerchant;

  /// Unblocking date on a per transaction basis.
  ///
  /// `yyyy-MM-dd` is in the format `HH:mm:ss`, for example `2015-10-19 14:36:52`.
  final String? blockageResolvedDate;

  ///
  final double? subMerchantPrice;

  ///
  final double? subMerchantPayoutRate;

  ///
  final double? subMerchantPayoutAmount;

  /// For this breakdown, the amount to be sent to the member merchant after
  /// deducting the iyzico transaction fee, commission amount and blockages.
  final double? merchantPayoutAmount;

  ///
  final ConvertedPayout? convertedPayout;
}
