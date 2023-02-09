import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/payment_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class PaymentResource extends IyzipayResource {
  const PaymentResource({
    this.price,
    this.paidPrice,
    this.currency,
    this.installment,
    this.paymentId,
    this.paymentStatus,
    this.fraudStatus,
    this.merchantCommissionRate,
    this.merchantCommissionRateAmount,
    this.iyziCommissionRateAmount,
    this.iyziCommissionFee,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.cardToken,
    this.cardUserKey,
    this.binNumber,
    this.basketId,
    this.paymentItems,
    this.connectorName,
    this.authCode,
    this.phase,
    this.lastFourDigits,
    this.posOrderId,
    this.hostReference,
    this.iban,
    this.legalCompanyTitle,
    this.bankName,
    this.referenceCode,
    this.mdStatus,
  });

  final double? price;
  final double? paidPrice;
  final Currency? currency;
  final int? installment;
  final String? paymentId;
  final String? paymentStatus;
  final int? fraudStatus;
  final double? merchantCommissionRate;
  final double? merchantCommissionRateAmount;
  final double? iyziCommissionRateAmount;
  final double? iyziCommissionFee;
  final String? cardType;
  final String? cardAssociation;
  final String? cardFamily;
  final String? cardToken;
  final String? cardUserKey;
  final String? binNumber;
  final String? basketId;
  @JsonKey(name: 'itemTransactions')
  final List<PaymentItem>? paymentItems;
  final String? connectorName;
  final String? authCode;
  final String? phase;
  final String? lastFourDigits;
  final String? posOrderId;
  final String? hostReference;
  final String? iban;
  final String? legalCompanyTitle;
  final String? bankName;
  final String? referenceCode;
  final int? mdStatus;

  @override
  IyzipayResource fromJson(JsonMap json) => _$PaymentResourceFromJson(json);

  @override
  JsonMap toJson() => _$PaymentResourceToJson(this);
}
