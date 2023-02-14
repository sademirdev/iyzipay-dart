import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/enums/iyzi_link_status.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyzi_link_item.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziLinkItem with JsonConvertible<IyziLinkItem> {
  const IyziLinkItem({
    required this.name,
    required this.description,
    required this.price,
    required this.currency,
    required this.token,
    required this.iyziLinkStatus,
    required this.url,
    required this.imageUrl,
    this.addressIgnorable,
    this.soldCount,
    this.soldLimit,
    this.remainingSoldLimit,
    this.installmentRequested,
  });

  final String name;
  final String description;
  final double price;
  @JsonKey(name: 'currencyCode')
  final Currency currency;
  final String token;
  @JsonKey(name: 'productStatus')
  final IyziLinkStatus iyziLinkStatus;
  final String url;
  final String imageUrl;
  final bool? addressIgnorable;
  final int? soldCount;
  final int? soldLimit;
  final int? remainingSoldLimit;
  final bool? installmentRequested;

  @override
  IyziLinkItem fromJson(JsonMap json) => _$IyziLinkItemFromJson(json);

  @override
  JsonMap toJson() => _$IyziLinkItemToJson(this);
}
