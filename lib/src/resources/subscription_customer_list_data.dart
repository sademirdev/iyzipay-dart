import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/resources/subscription_customer_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_customer_list_data.g.dart';

@JsonSerializable(includeIfNull: false)
class SubscriptionCustomerListData
    with JsonConvertible<SubscriptionCustomerListData> {
  SubscriptionCustomerListData({
    this.subscriptionCustomer,
    this.totalCount,
    this.currentPage,
    this.pageCount,
  });

  @JsonKey(name: 'items')
  final List<SubscriptionCustomerData>? subscriptionCustomer;
  final int? totalCount;
  final int? currentPage;
  final int? pageCount;

  @override
  SubscriptionCustomerListData fromJson(JsonMap json) =>
      _$SubscriptionCustomerListDataFromJson(json);

  @override
  JsonMap toJson() => _$SubscriptionCustomerListDataToJson(this);
}
