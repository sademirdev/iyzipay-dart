// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Consumer _$ConsumerFromJson(Map<String, dynamic> json) => Consumer(
      name: json['name'] as String,
      surname: json['surname'] as String,
      identityNumber: json['identityNumber'] as String,
      email: json['email'] as String,
      gsmNumber: json['gsmNumber'] as String,
    );

Map<String, dynamic> _$ConsumerToJson(Consumer instance) => <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'identityNumber': instance.identityNumber,
      'email': instance.email,
      'gsmNumber': instance.gsmNumber,
    };
