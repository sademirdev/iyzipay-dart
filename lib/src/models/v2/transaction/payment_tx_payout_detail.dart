import 'package:iyzipay/src/enums/currency.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_tx_payout_detail.g.dart';

@JsonSerializable(includeIfNull: false)
class PaymentTxPayoutDetail with JsonConvertible<PaymentTxPayoutDetail> {
  const PaymentTxPayoutDetail({
    required this.paidPrice,
    required this.iyziCommissionRateAmount,
    required this.iyziCommissionFee,
    required this.blockageRateAmountMerchant,
    required this.blockageRateAmountSubMerchant,
    required this.subMerchantPayoutAmount,
    required this.merchantPayoutAmount,
    required this.iyziConversionRate,
    required this.iyziConversionRateAmount,
    required this.currency,
  });

  final double paidPrice;
  final double iyziCommissionRateAmount;
  final double iyziCommissionFee;
  final double blockageRateAmountMerchant;
  final double blockageRateAmountSubMerchant;
  final double subMerchantPayoutAmount;
  final double merchantPayoutAmount;
  final double iyziConversionRate;
  final double iyziConversionRateAmount;
  final Currency currency;

  @override
  PaymentTxPayoutDetail fromJson(JsonMap json) =>
      _$PaymentTxPayoutDetailFromJson(json);

  @override
  JsonMap toJson() => _$PaymentTxPayoutDetailToJson(this);
}
