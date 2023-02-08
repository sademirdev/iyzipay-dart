import 'package:iyzipay/src/enums/currency.dart';
import 'package:json_annotation/json_annotation.dart';

part 'converted_payout.g.dart';

@JsonSerializable(includeIfNull: false)
class ConvertedPayout {
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
  final double? iyziConversionRate;

  ///
  final double? iyziConversionRateAmount;

  /// The currency in which the payment was received.
  final Currency? currency;
}
