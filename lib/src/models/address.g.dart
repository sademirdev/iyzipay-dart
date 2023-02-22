// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      address: json['address'] as String,
      zipCode: json['zipCode'] as String?,
      contactName: json['contactName'] as String,
      district: json['district'] as String?,
      city: json['city'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$AddressToJson(Address instance) {
  final val = <String, dynamic>{
    'address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('zipCode', instance.zipCode);
  val['contactName'] = instance.contactName;
  writeNotNull('district', instance.district);
  val['city'] = instance.city;
  val['country'] = instance.country;
  return val;
}
