import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/v2/iyzi_link/iyzi_link_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyzi_link_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziLinkResource extends IyzipayResource {
  const IyziLinkResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.data,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final IyziLinkItem? data;

  @override
  IyziLinkResource fromJson(JsonMap json) => _$IyziLinkResourceFromJson(json);

  @override
  JsonMap toJson() => _$IyziLinkResourceToJson(this);
}
