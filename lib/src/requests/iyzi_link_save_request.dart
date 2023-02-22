import 'package:iyzipay/src/base_request.dart';
import 'package:iyzipay/src/enums/enums.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyzi_link_save_request.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziLinkSaveRequest extends BaseRequest<IyziLinkSaveRequest> {
  const IyziLinkSaveRequest({
    super.locale,
    super.conversationId,
    required this.name,
    required this.description,
    required this.base64EncodedImage,
    required this.price,
    required this.currency,
    this.addressIgnorable,
    this.soldLimit,
    this.installmentRequested,
  });

  final String name;
  final String description;
  @JsonKey(name: 'encodedImageFile')
  final String base64EncodedImage;
  final double price;
  @JsonKey(name: 'currencyCode')
  final Currency currency;
  final bool? addressIgnorable;
  final int? soldLimit;
  final bool? installmentRequested;

  @override
  IyziLinkSaveRequest fromJson(JsonMap json) =>
      _$IyziLinkSaveRequestFromJson(json);

  @override
  JsonMap toJson() => _$IyziLinkSaveRequestToJson(this);
}
