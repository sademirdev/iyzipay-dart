import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/payment_detail.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/reporting_payment_detail_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reporting_payment_detail.g.dart';

/// [ReportingPaymentDetail] can also be called as `TransactionDetail`
@JsonSerializable(includeIfNull: false)
class ReportingPaymentDetail extends IyzipayResource {
  const ReportingPaymentDetail({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.payments,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final List<PaymentDetail>? payments;

  static Future<ReportingPaymentDetail?> retrieve({
    required ReportingPaymentDetailRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.retrieveReportingPaymentDetail.path +
        getQueryParams(request);
    return HttpClient.get(
      url: uri,
      responseModel: const ReportingPaymentDetail(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static String getQueryParams(BaseRequest<dynamic> request) {
    final queryParams = StringBuffer()
      ..write('?conversationId=${request.conversationId}');

    if (request.locale?.value.isNotEmpty ?? false) {
      queryParams.write('&locale=${request.locale!.value}');
    }

    if (request is ReportingPaymentDetailRequest) {
      if (request.paymentId.isNotEmpty) {
        queryParams.write('&paymentId=${request.paymentId}');
      }

      if (request.paymentConversationId.isNotEmpty) {
        queryParams
            .write('&paymentConversationId=${request.paymentConversationId}');
      }
    }

    return queryParams.toString();
  }

  @override
  ReportingPaymentDetail fromJson(JsonMap json) =>
      _$ReportingPaymentDetailFromJson(json);

  @override
  JsonMap toJson() => _$ReportingPaymentDetailToJson(this);
}
