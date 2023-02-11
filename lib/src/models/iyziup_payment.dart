import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyziup_payment.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziupPayment with JsonConvertible<IyziupPayment> {
  const IyziupPayment({
    required this.price,
    required this.paidPrice,
    required this.currency,
    required this.installment,
    required this.paymentId,
    required this.paymentStatus,
    required this.fraudStatus,
    required this.merchantCommissionRate,
    required this.merchantCommissionRateAmount,
    required this.iyziCommissionRateAmount,
    required this.iyziCommissionFee,
    required this.cardType,
    required this.cardAssociation,
    required this.cardFamily,
    required this.binNumber,
    required this.basketId,
    required this.paymentItems,
    required this.connectorName,
    required this.authCode,
    required this.phase,
    required this.lastFourDigits,
    required this.posOrderId,
  });

  final double price;
  final double paidPrice;
  final Currency currency;
  final int installment;
  final String paymentId;
  final String paymentStatus;
  final int fraudStatus;
  final double merchantCommissionRate;
  final double merchantCommissionRateAmount;
  final double iyziCommissionRateAmount;
  final double iyziCommissionFee;
  final String cardType;
  final String cardAssociation;
  final String cardFamily;
  final String binNumber;
  final String basketId;
  @JsonKey(name: 'itemTransactions')
  final List<PaymentItem> paymentItems;
  final String connectorName;
  final String authCode;
  final String phase;
  final String lastFourDigits;
  final String posOrderId;

  @override
  IyziupPayment fromJson(JsonMap json) => _$IyziupPaymentFromJson(json);

  @override
  JsonMap toJson() => _$IyziupPaymentToJson(this);
}
