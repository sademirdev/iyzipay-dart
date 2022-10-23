import 'package:iyzipay/src/interface/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_installment_info_request.g.dart';

/// Warning: Use Utils.formatPrice method with [price]
@JsonSerializable(includeIfNull: false)
class RetrieveInstallmentInfoRequest extends Request<RetrieveInstallmentInfoRequest> {
  ///
  const RetrieveInstallmentInfoRequest({
    super.locale,
    super.conversationId,
    required this.binNumber,
    required this.price,
  });

  ///
  final String binNumber;

  ///
  final String price;

  @override
  RetrieveInstallmentInfoRequest fromJson(Map<String, dynamic> json) => _$RetrieveInstallmentInfoRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RetrieveInstallmentInfoRequestToJson(this);
}
