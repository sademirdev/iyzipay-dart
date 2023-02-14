import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/v2/iyzi_link/iyzi_link_paging.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyzi_link_paging_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziLinkPagingResource extends IyzipayResource {
  const IyziLinkPagingResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.data,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final IyziLinkPaging? data;

  @override
  IyziLinkPagingResource fromJson(JsonMap json) =>
      _$IyziLinkPagingResourceFromJson(json);

  @override
  JsonMap toJson() => _$IyziLinkPagingResourceToJson(this);
}
