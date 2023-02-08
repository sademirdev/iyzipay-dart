import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/bkm_installment_price.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bkm_installment.g.dart';

@JsonSerializable(includeIfNull: false)
class BkmInstallment with JsonConvertible<BkmInstallment> {
  const BkmInstallment({
    this.bankId,
    required this.installmentPrices,
  });

  final int? bankId;
  final List<BkmInstallmentPrice> installmentPrices;

  @override
  BkmInstallment fromJson(JsonMap json) => _$BkmInstallmentFromJson(json);

  @override
  JsonMap toJson() => _$BkmInstallmentToJson(this);
}
