import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/bkm_installment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_basic_bkm_initialize_request.g.dart';

@JsonSerializable(includeIfNull: false)
class CreateBasicBkmInitializeRequest
    extends BaseRequest<CreateBasicBkmInitializeRequest> {
  const CreateBasicBkmInitializeRequest({
    super.locale,
    super.conversationId,
    required this.connectorName,
    required this.price,
    required this.callbackUrl,
    required this.buyerEmail,
    required this.buyerId,
    required this.buyerIp,
    required this.posOrderId,
    required this.installmentDetails,
  });

  final String connectorName;
  final double price;
  final String callbackUrl;
  final String buyerEmail;
  final String buyerId;
  final String buyerIp;
  final String posOrderId;
  final List<BkmInstallment> installmentDetails;

  @override
  CreateBasicBkmInitializeRequest fromJson(JsonMap json) =>
      _$CreateBasicBkmInitializeRequestFromJson(json);

  @override
  JsonMap toJson() => _$CreateBasicBkmInitializeRequestToJson(this);
}
