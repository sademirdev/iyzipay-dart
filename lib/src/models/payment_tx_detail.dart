import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/payment_tx_payout_detail.dart';
import 'package:iyzipay/src/models/refund_tx_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_tx_detail.g.dart';

@JsonSerializable(includeIfNull: false)
class PaymentTxDetail with JsonConvertible<PaymentTxDetail> {
  const PaymentTxDetail({
    required this.itemId,
    required this.paymentTransactionId,
    required this.transactionStatus,
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
    required this.refunds,
  });

  final String itemId;
  final int paymentTransactionId;
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
  final DateTime blockageResolvedDate;
  final String subMerchantKey;
  final double subMerchantPrice;
  final double subMerchantPayoutRate;
  final double subMerchantPayoutAmount;
  final double merchantPayoutAmount;
  final PaymentTxPayoutDetail convertedPayout;
  final List<RefundTxDetail> refunds;

  @override
  PaymentTxDetail fromJson(JsonMap json) => _$PaymentTxDetailFromJson(json);

  @override
  JsonMap toJson() => _$PaymentTxDetailToJson(this);
}
