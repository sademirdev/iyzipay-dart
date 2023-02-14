// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingRequest _$PagingRequestFromJson(Map<String, dynamic> json) =>
    PagingRequest(
      page: json['page'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$PagingRequestToJson(PagingRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('count', instance.count);
  return val;
}
