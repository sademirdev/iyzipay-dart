import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/payout_completed_transaction.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_transactions_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payout_completed_transaction_list.g.dart';

@JsonSerializable(includeIfNull: false)
class PayoutCompletedTransactionList extends IyzipayResource {
  const PayoutCompletedTransactionList({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.payoutCompletedTransactions,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final List<PayoutCompletedTransaction>? payoutCompletedTransactions;

  static Future<PayoutCompletedTransactionList?> retrieve({
    required RetrieveTransactionsRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl +
          NetworkPaths.retrievePayoutCompletedTransactionList.path,
      request: request,
      responseModel: const PayoutCompletedTransactionList(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  PayoutCompletedTransactionList fromJson(JsonMap json) =>
      _$PayoutCompletedTransactionListFromJson(json);

  @override
  JsonMap toJson() => _$PayoutCompletedTransactionListToJson(this);
}
