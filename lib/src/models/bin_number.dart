import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/options.dart';
import 'package:iyzipay/src/requests/retrieve_bin_number_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bin_number.g.dart';

@JsonSerializable(includeIfNull: false)
class BinNumber extends IyzipayResource {
  const BinNumber({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.binNumber,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.bankName,
    this.bankCode,
    this.commercial,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? binNumber;
  final String? cardType;
  final String? cardAssociation;
  final String? cardFamily;
  final String? bankName;
  final int? bankCode;
  final int? commercial;

  static Future<BinNumber?> retrieve({
    required RetrieveBinNumberRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveBinNumber.path,
      request: request,
      responseModel: const BinNumber(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  BinNumber fromJson(JsonMap json) => _$BinNumberFromJson(json);

  @override
  JsonMap toJson() => _$BinNumberToJson(this);
}
