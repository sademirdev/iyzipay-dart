// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_customer_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionCustomerListData _$SubscriptionCustomerListDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionCustomerListData(
      subscriptionCustomer: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              SubscriptionCustomerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int?,
      currentPage: json['currentPage'] as int?,
      pageCount: json['pageCount'] as int?,
    );

Map<String, dynamic> _$SubscriptionCustomerListDataToJson(
    SubscriptionCustomerListData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.subscriptionCustomer);
  writeNotNull('totalCount', instance.totalCount);
  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('pageCount', instance.pageCount);
  return val;
}
