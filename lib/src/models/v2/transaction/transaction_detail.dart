import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_detail.g.dart';

@JsonSerializable(includeIfNull: false)
class TransactionDetail with JsonConvertible<TransactionDetail> {
  const TransactionDetail({
    required this.transactionType,
    required this.transactionDate,
    required this.transactionId,
    this.transactionStatus,
    required this.afterSettlement,
    required this.paymentTxId,
    required this.paymentId,
    required this.conversationId,
    required this.paymentPhase,
    required this.price,
    required this.paidPrice,
    required this.transactionCurrency,
    required this.installment,
    required this.threeDS,
    required this.iyzicoCommission,
    required this.iyzicoFee,
    required this.parity,
    required this.iyzicoConversionAmount,
    required this.settlementCurrency,
    required this.merchantPayoutAmount,
    required this.connectorType,
    required this.posOrderId,
    required this.posName,
    required this.subMerchantKey,
    required this.subMerchantPayoutAmount,
    required this.authCode,
    required this.hostReference,
    required this.basketId,
  });

  final String transactionType;
  final String transactionDate;
  final int transactionId;
  final int? transactionStatus;
  final int afterSettlement;
  final int paymentTxId;
  final int paymentId;
  final String conversationId;
  final String paymentPhase;
  final double price;
  final double paidPrice;
  final String transactionCurrency;
  final int installment;
  final int threeDS;
  final double iyzicoCommission;
  final double iyzicoFee;
  final double parity;
  final double iyzicoConversionAmount;
  final String settlementCurrency;
  final double merchantPayoutAmount;
  final String connectorType;
  final String posOrderId;
  final String posName;
  final String subMerchantKey;
  final double subMerchantPayoutAmount;
  final String authCode;
  final String hostReference;
  final String basketId;

  @override
  TransactionDetail fromJson(JsonMap json) => _$TransactionDetailFromJson(json);

  @override
  JsonMap toJson() => _$TransactionDetailToJson(this);
}
