import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basic_payment_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class BasicPaymentResource extends IyzipayResource {
  const BasicPaymentResource({
    this.price,
    this.paidPrice,
    this.installment,
    this.currency,
    this.paymentId,
    this.merchantCommissionRate,
    this.merchantCommissionRateAmount,
    this.iyziCommissionFee,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.cardToken,
    this.cardUserKey,
    this.binNumber,
    this.paymentTransactionId,
    this.authCode,
    this.connectorName,
    this.phase,
  });

  final double? price;
  final double? paidPrice;
  final int? installment;
  final Currency? currency;
  final String? paymentId;
  final double? merchantCommissionRate;
  final double? merchantCommissionRateAmount;
  final double? iyziCommissionFee;
  final String? cardType;
  final String? cardAssociation;
  final String? cardFamily;
  final String? cardToken;
  final String? cardUserKey;
  final String? binNumber;
  final String? paymentTransactionId;
  final String? authCode;
  final String? connectorName;
  final String? phase;

  @override
  BasicPaymentResource fromJson(JsonMap json) =>
      _$BasicPaymentResourceFromJson(json);

  @override
  JsonMap toJson() => _$BasicPaymentResourceToJson(this);
}
