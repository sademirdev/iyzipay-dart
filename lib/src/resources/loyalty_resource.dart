import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class LoyaltyResource extends IyzipayResource {
  const LoyaltyResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.points,
    this.amount,
    this.cardBank,
    this.cardFamily,
    this.currency,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final double? points;
  final double? amount;
  final String? cardBank;
  final String? cardFamily;
  final Currency? currency;

  @override
  LoyaltyResource fromJson(JsonMap json) => _$LoyaltyResourceFromJson(json);

  @override
  JsonMap toJson() => _$LoyaltyResourceToJson(this);
}
