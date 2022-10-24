// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buyer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Buyer _$BuyerFromJson(Map<String, dynamic> json) => Buyer(
      id: json['id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      identityNumber: json['identityNumber'] as String,
      email: json['email'] as String,
      gsmNumber: json['gsmNumber'] as String?,
      registrationDate: json['registrationDate'] as String?,
      lastLoginDate: json['lastLoginDate'] as String?,
      registrationAddress: json['registrationAddress'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      zipCode: json['zipCode'] as String?,
      ip: json['ip'] as String,
    );

Map<String, dynamic> _$BuyerToJson(Buyer instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'surname': instance.surname,
    'identityNumber': instance.identityNumber,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gsmNumber', instance.gsmNumber);
  writeNotNull('registrationDate', instance.registrationDate);
  writeNotNull('lastLoginDate', instance.lastLoginDate);
  val['registrationAddress'] = instance.registrationAddress;
  val['city'] = instance.city;
  val['country'] = instance.country;
  writeNotNull('zipCode', instance.zipCode);
  val['ip'] = instance.ip;
  return val;
}
