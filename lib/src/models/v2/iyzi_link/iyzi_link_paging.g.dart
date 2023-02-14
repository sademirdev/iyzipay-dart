// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iyzi_link_paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IyziLinkPaging _$IyziLinkPagingFromJson(Map<String, dynamic> json) =>
    IyziLinkPaging(
      iyziLinkItems: (json['items'] as List<dynamic>)
          .map((e) => IyziLinkItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int?,
      currentPage: json['currentPage'] as int?,
      pageCount: json['pageCount'] as int?,
    );

Map<String, dynamic> _$IyziLinkPagingToJson(IyziLinkPaging instance) {
  final val = <String, dynamic>{
    'items': instance.iyziLinkItems,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('totalCount', instance.totalCount);
  writeNotNull('currentPage', instance.currentPage);
  writeNotNull('pageCount', instance.pageCount);
  return val;
}
