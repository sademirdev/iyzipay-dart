import 'package:iyzipay/src/enums/currency.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/payment_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apm_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class ApmResource extends IyzipayResource {
  const ApmResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.redirectUrl,
    this.price,
    this.paidPrice,
    this.paymentId,
    this.merchantCommissionRate,
    this.merchantCommissionRateAmount,
    this.iyziCommissionRateAmount,
    this.iyziCommissionFee,
    this.basketId,
    this.currency,
    this.paymentItems,
    this.phase,
    this.accountHolderName,
    this.accountNumber,
    this.bankName,
    this.bankCode,
    this.bic,
    this.paymentPurpose,
    this.iban,
    this.countryCode,
    this.apm,
    this.mobilePhone,
    this.paymentStatus,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? redirectUrl;
  // Note: might be double
  final String? price;
  // Note: might be double
  final String? paidPrice;
  final String? paymentId;
  // Note: might be double
  final String? merchantCommissionRate;
  // Note: might be double
  final String? merchantCommissionRateAmount;
  // Note: might be double
  final String? iyziCommissionRateAmount;
  // Note: might be double
  final String? iyziCommissionFee;
  final String? basketId;
  final Currency? currency;
  @JsonKey(name: 'itemTransactions')
  final List<PaymentItem?>? paymentItems;
  final String? phase;
  final String? accountHolderName;
  final String? accountNumber;
  final String? bankName;
  final String? bankCode;
  final String? bic;
  final String? paymentPurpose;
  final String? iban;
  final String? countryCode;
  final String? apm;
  final String? mobilePhone;
  final String? paymentStatus;

  @override
  ApmResource fromJson(JsonMap json) => _$ApmResourceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ApmResourceToJson(this);
}
