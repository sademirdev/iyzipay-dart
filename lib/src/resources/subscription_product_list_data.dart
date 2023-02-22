import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_product_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_product_list_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionProductListData
    with JsonConvertible<SubscriptionProductListData> {
  SubscriptionProductListData({
    this.productList,
    this.totalCount,
    this.currentPage,
    this.pageCount,
  });

  @JsonKey(name: 'items')
  final List<SubscriptionProductData>? productList;
  final int? totalCount;
  final int? currentPage;
  final int? pageCount;

  @override
  SubscriptionProductListData fromJson(JsonMap json) =>
      _$SubscriptionProductListDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionProductListDataToJson(this);
}
