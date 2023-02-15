import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payout_completed_transaction.g.dart';

@JsonSerializable(includeIfNull: false)
class PayoutCompletedTransaction
    with JsonConvertible<PayoutCompletedTransaction> {
  const PayoutCompletedTransaction({
    required this.paymentTransactionId,
    required this.payoutAmount,
    required this.payoutType,
    required this.subMerchantKey,
    required this.currency,
  });

  final String paymentTransactionId;
  final double payoutAmount;
  final String payoutType;
  final String subMerchantKey;
  final Currency currency;

  @override
  PayoutCompletedTransaction fromJson(JsonMap json) =>
      _$PayoutCompletedTransactionFromJson(json);

  @override
  JsonMap toJson() => _$PayoutCompletedTransactionToJson(this);
}
