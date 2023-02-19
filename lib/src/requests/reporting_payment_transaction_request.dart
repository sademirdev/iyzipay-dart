import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reporting_payment_transaction_request.g.dart';

@JsonSerializable(includeIfNull: false)
class ReportingPaymentTransactionRequest
    extends BaseRequest<ReportingPaymentTransactionRequest> {
  const ReportingPaymentTransactionRequest({
    super.locale,
    super.conversationId,
    required this.transactionDate,
    required this.page,
  });

  final String transactionDate;
  final int page;

  @override
  ReportingPaymentTransactionRequest fromJson(JsonMap json) =>
      _$ReportingPaymentTransactionRequestFromJson(json);

  @override
  JsonMap toJson() => _$ReportingPaymentTransactionRequestToJson(this);
}
