import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_installment_info_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveInstallmentInfoRequest
    extends BaseRequest<RetrieveInstallmentInfoRequest> {
  const RetrieveInstallmentInfoRequest({
    required this.binNumber,
    required this.price,
    this.currency,
  });

  final String binNumber;
  final double price;
  final Currency? currency;

  @override
  RetrieveInstallmentInfoRequest fromJson(JsonMap json) =>
      _$RetrieveInstallmentInfoRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveInstallmentInfoRequestToJson(this);
}
