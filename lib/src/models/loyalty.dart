import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty.g.dart';

@JsonSerializable(includeIfNull: false)
class Loyalty with JsonConvertible<Loyalty> {
  const Loyalty({
    required this.rewardAmount,
    required this.rewardUsage,
  });

  final double rewardAmount;
  final int rewardUsage;

  @override
  Loyalty fromJson(JsonMap json) => _$LoyaltyFromJson(json);

  @override
  JsonMap toJson() => _$LoyaltyToJson(this);
}
