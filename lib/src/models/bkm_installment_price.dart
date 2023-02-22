import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bkm_installment_price.g.dart';

@JsonSerializable(includeIfNull: false)
class BkmInstallmentPrice with JsonConvertible<BkmInstallmentPrice> {
  const BkmInstallmentPrice({
    this.installmentNumber,
    required this.totalPrice,
  });

  final int? installmentNumber;
  final double totalPrice;

  @override
  BkmInstallmentPrice fromJson(JsonMap json) =>
      _$BkmInstallmentPriceFromJson(json);

  @override
  JsonMap toJson() => _$BkmInstallmentPriceToJson(this);
}
