import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'installment_price.g.dart';

@JsonSerializable(includeIfNull: false)
class InstallmentPrice with JsonConvertible<InstallmentPrice> {
  const InstallmentPrice({
    required this.installmentPrice,
    required this.totalPrice,
    this.installmentNumber,
  });

  final double installmentPrice;
  final double totalPrice;
  final int? installmentNumber;

  @override
  InstallmentPrice fromJson(JsonMap json) => _$InstallmentPriceFromJson(json);

  @override
  JsonMap toJson() => _$InstallmentPriceToJson(this);
}
