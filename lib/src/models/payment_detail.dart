import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/payment_tx_detail.dart';
import 'package:iyzipay/src/models/refund_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_detail.g.dart';

@JsonSerializable(includeIfNull: false)
class PaymentDetail with JsonConvertible<PaymentDetail> {
  const PaymentDetail({
    required this.paymentId,
    required this.paymentStatus,
    required this.paymentRefundStatus,
    required this.price,
    required this.paidPrice,
    required this.installment,
    required this.merchantCommissionRate,
    required this.merchantCommissionRateAmount,
    required this.iyziCommissionRateAmount,
    required this.iyziCommissionFee,
    required this.paymentConversationId,
    required this.fraudStatus,
    required this.cardType,
    required this.cardAssociation,
    required this.cardFamily,
    required this.cardToken,
    required this.cardUserKey,
    required this.binNumber,
    required this.lastFourDigits,
    required this.basketId,
    required this.currency,
    required this.connectorName,
    required this.authCode,
    required this.threeDS,
    required this.phase,
    required this.acquirerBankName,
    required this.mdStatus,
    required this.hostReference,
    required this.createdDate,
    required this.updatedDate,
    required this.orderId,
    required this.cancels,
    required this.itemTransactions,
  });

  final int paymentId;
  final int paymentStatus;
  final String paymentRefundStatus;
  final double price;
  final double paidPrice;
  final int installment;
  final double merchantCommissionRate;
  final double merchantCommissionRateAmount;
  final double iyziCommissionRateAmount;
  final double iyziCommissionFee;
  final String paymentConversationId;
  final int fraudStatus;
  final String cardType;
  final String cardAssociation;
  final String cardFamily;
  final String cardToken;
  final String cardUserKey;
  final String binNumber;
  final String lastFourDigits;
  final String basketId;
  final String currency;
  final String connectorName;
  final String authCode;
  final bool threeDS;
  final String phase;
  final String acquirerBankName;
  final int mdStatus;
  final String hostReference;
  final DateTime createdDate;
  final DateTime updatedDate;
  final String orderId;
  final List<RefundDetail> cancels;
  final List<PaymentTxDetail> itemTransactions;

  @override
  PaymentDetail fromJson(JsonMap json) => _$PaymentDetailFromJson(json);

  @override
  JsonMap toJson() => _$PaymentDetailToJson(this);
}
