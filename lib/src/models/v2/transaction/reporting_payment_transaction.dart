import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/v2/transaction/transaction_detail.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/reporting_payment_transaction_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reporting_payment_transaction.g.dart';

@JsonSerializable(includeIfNull: false)
class ReportingPaymentTransaction extends IyzipayResource {
  const ReportingPaymentTransaction({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.transactions,
    this.currentPage,
    this.totalPageCount,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final List<TransactionDetail>? transactions;
  final int? currentPage;
  final int? totalPageCount;

  static Future<ReportingPaymentTransaction?> retrieve({
    required ReportingPaymentTransactionRequest request,
    required Options options,
  }) async {
    final uri = options.baseUrl +
        NetworkPaths.retrieveReportingPaymentTransaction.path +
        getQueryParams(request);
    return HttpClient.get(
      url: uri,
      responseModel: const ReportingPaymentTransaction(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
        uri: uri,
      ),
    );
  }

  static String getQueryParams(BaseRequest<dynamic> request) {
    final queryParams = StringBuffer()
      ..write('?conversationId=${request.conversationId}');

    if (request.locale?.value.isNotEmpty ?? false) {
      queryParams.write('&locale=${request.locale!.value}');
    }

    if (request is ReportingPaymentTransactionRequest) {
      if (request.transactionDate.isNotEmpty) {
        queryParams.write('&transactionDate=${request.transactionDate}');
      }

      // page might be nullable in the future
      queryParams.write('&page=${request.page}');
    }

    return queryParams.toString();
  }

  @override
  ReportingPaymentTransaction fromJson(JsonMap json) =>
      _$ReportingPaymentTransactionFromJson(json);

  @override
  JsonMap toJson() => _$ReportingPaymentTransactionToJson(this);
}
