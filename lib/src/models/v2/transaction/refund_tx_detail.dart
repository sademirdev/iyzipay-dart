import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refund_tx_detail.g.dart';

@JsonSerializable(includeIfNull: false)
class RefundTxDetail with JsonConvertible<RefundTxDetail> {
  const RefundTxDetail({
    required this.refundTxId,
    required this.refundConversationId,
    required this.refundPrice,
    required this.refundStatus,
    required this.isAfterSettlement,
    required this.createdDate,
    required this.currencyCode,
    required this.authCode,
    required this.hostReference,
    required this.errorGroup,
    required this.errorCode,
    required this.errorMessage,
  });

  final int refundTxId;
  final String refundConversationId;
  final double refundPrice;
  final int refundStatus;
  final bool isAfterSettlement;
  final DateTime createdDate;
  final String currencyCode;
  final String authCode;
  final String hostReference;
  final String errorGroup;
  final String errorCode;
  final String errorMessage;

  @override
  RefundTxDetail fromJson(JsonMap json) => _$RefundTxDetailFromJson(json);

  @override
  JsonMap toJson() => _$RefundTxDetailToJson(this);
}
