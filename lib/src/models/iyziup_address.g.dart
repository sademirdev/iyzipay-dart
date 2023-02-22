// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iyziup_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IyziupAddress _$IyziupAddressFromJson(Map<String, dynamic> json) =>
    IyziupAddress(
      alias: json['alias'] as String,
      addressLine1: json['addressLine1'] as String,
      addressLine2: json['addressLine2'] as String,
      zipCode: json['zipCode'] as String,
      contactName: json['contactName'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$IyziupAddressToJson(IyziupAddress instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'zipCode': instance.zipCode,
      'contactName': instance.contactName,
      'city': instance.city,
      'country': instance.country,
    };
