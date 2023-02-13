import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_sub_merchant_request.g.dart';

@JsonSerializable(includeIfNull: false)
class RetrieveSubMerchantRequest
    extends BaseRequest<RetrieveSubMerchantRequest> {
  const RetrieveSubMerchantRequest({
    super.locale,
    super.conversationId,
    required this.subMerchantExternalId,
  });

  final String subMerchantExternalId;

  @override
  RetrieveSubMerchantRequest fromJson(JsonMap json) =>
      _$RetrieveSubMerchantRequestFromJson(json);

  @override
  JsonMap toJson() => _$RetrieveSubMerchantRequestToJson(this);
}
