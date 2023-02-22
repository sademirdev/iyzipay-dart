import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/bank_transfer.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_transactions_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bounced_bank_transfer_list.g.dart';

@JsonSerializable(includeIfNull: false)
class BouncedBankTransferList extends IyzipayResource {
  const BouncedBankTransferList({
    this.bankTransfers,
  });

  @JsonKey(name: 'bouncedRows')
  final List<BankTransfer>? bankTransfers;

  static Future<BouncedBankTransferList?> retrieve({
    required RetrieveTransactionsRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveBouncedBankTransferList.path,
      request: request,
      responseModel: const BouncedBankTransferList(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  IyzipayResource fromJson(JsonMap json) =>
      _$BouncedBankTransferListFromJson(json);

  @override
  JsonMap toJson() => _$BouncedBankTransferListToJson(this);
}
