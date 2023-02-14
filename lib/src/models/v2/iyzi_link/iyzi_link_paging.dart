import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/models/v2/iyzi_link/iyzi_link_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iyzi_link_paging.g.dart';

@JsonSerializable(includeIfNull: false)
class IyziLinkPaging with JsonConvertible<IyziLinkPaging> {
  const IyziLinkPaging({
    required this.iyziLinkItems,
    this.totalCount,
    this.currentPage,
    this.pageCount,
  });

  @JsonKey(name: 'items')
  final List<IyziLinkItem> iyziLinkItems;
  final int? totalCount;
  final int? currentPage;
  final int? pageCount;

  @override
  IyziLinkPaging fromJson(JsonMap json) => _$IyziLinkPagingFromJson(json);

  @override
  JsonMap toJson() => _$IyziLinkPagingToJson(this);
}
