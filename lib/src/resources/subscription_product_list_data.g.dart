// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_product_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionProductListData _$SubscriptionProductListDataFromJson(
        Map<String, dynamic> json) =>
    SubscriptionProductListData(
      productList: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              SubscriptionProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int?,
      currentPage: json['currentPage'] as int?,
      pageCount: json['pageCount'] as int?,
    );

Map<String, dynamic> _$SubscriptionProductListDataToJson(
    SubscriptionProductListData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.productList);
  writeNotNull('totalCount', instance.totalCount);
  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('pageCount', instance.pageCount);
  return val;
}
