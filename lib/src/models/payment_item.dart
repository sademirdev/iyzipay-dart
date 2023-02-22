import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/models/converted_payout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_item.g.dart';

@JsonSerializable(includeIfNull: false)
class PaymentItem extends IyzipayResource {
  const PaymentItem({
    required this.itemId,
    required this.paymentTransactionId,
    this.transactionStatus,
    required this.price,
    required this.paidPrice,
    required this.merchantCommissionRate,
    required this.merchantCommissionRateAmount,
    required this.iyziCommissionRateAmount,
    required this.iyziCommissionFee,
    required this.blockageRate,
    required this.blockageRateAmountMerchant,
    required this.blockageRateAmountSubMerchant,
    required this.blockageResolvedDate,
    required this.subMerchantKey,
    required this.subMerchantPrice,
    required this.subMerchantPayoutRate,
    required this.subMerchantPayoutAmount,
    required this.merchantPayoutAmount,
    required this.convertedPayout,
  });

  final String itemId;
  final String paymentTransactionId;
  final int? transactionStatus;
  final double price;
  final double paidPrice;
  final double merchantCommissionRate;
  final double merchantCommissionRateAmount;
  final double iyziCommissionRateAmount;
  final double iyziCommissionFee;
  final double blockageRate;
  final double blockageRateAmountMerchant;
  final double blockageRateAmountSubMerchant;
  final String blockageResolvedDate;
  final String subMerchantKey;
  final double subMerchantPrice;
  final double subMerchantPayoutRate;
  final double subMerchantPayoutAmount;
  final double merchantPayoutAmount;
  final ConvertedPayout convertedPayout;

  /// Converts [Map] to [PaymentItem]
  @override
  PaymentItem fromJson(Map<String, dynamic> json) =>
      _$PaymentItemFromJson(json);

  /// Converts [PaymentItem] to [Map]
  @override
  Map<String, dynamic> toJson() => _$PaymentItemToJson(this);
}
