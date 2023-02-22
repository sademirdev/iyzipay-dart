import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/v2/iyzi_link/iyzi_link_save.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyzi_link_save_resource.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziLinkSaveResource extends IyzipayResource {
  const IyziLinkSaveResource({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.data,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final IyziLinkSave? data;

  @override
  IyziLinkSaveResource fromJson(JsonMap json) =>
      _$IyziLinkSaveResourceFromJson(json);

  @override
  JsonMap toJson() => _$IyziLinkSaveResourceToJson(this);
}
