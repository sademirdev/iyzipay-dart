import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refund_detail.g.dart';

@JsonSerializable(includeIfNull: false)
class RefundDetail with JsonConvertible<RefundDetail> {
  const RefundDetail({
    required this.refundId,
    required this.cancelConversationId,
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

  final int refundId;
  final String cancelConversationId;
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
  RefundDetail fromJson(JsonMap json) => _$RefundDetailFromJson(json);

  @override
  JsonMap toJson() => _$RefundDetailToJson(this);
}
