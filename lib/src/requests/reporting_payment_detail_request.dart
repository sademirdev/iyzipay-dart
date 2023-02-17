import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reporting_payment_detail_request.g.dart';

@JsonSerializable(includeIfNull: false)
class ReportingPaymentDetailRequest
    extends BaseRequest<ReportingPaymentDetailRequest> {
  const ReportingPaymentDetailRequest({
    super.locale,
    super.conversationId,
    required this.paymentId,
    required this.paymentConversationId,
  });

  final String paymentId;
  final String paymentConversationId;

  @override
  ReportingPaymentDetailRequest fromJson(JsonMap json) =>
      _$ReportingPaymentDetailRequestFromJson(json);

  @override
  JsonMap toJson() => _$ReportingPaymentDetailRequestToJson(this);
}
