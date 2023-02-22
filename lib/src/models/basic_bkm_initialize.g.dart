// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_bkm_initialize.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicBkmInitialize _$BasicBkmInitializeFromJson(Map<String, dynamic> json) =>
    BasicBkmInitialize(
      htmlContent: json['htmlContent'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$BasicBkmInitializeToJson(BasicBkmInitialize instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('htmlContent', instance.htmlContent);
  writeNotNull('token', instance.token);
  return val;
}
