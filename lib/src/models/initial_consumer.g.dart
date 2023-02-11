// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_consumer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitialConsumer _$InitialConsumerFromJson(Map<String, dynamic> json) =>
    InitialConsumer(
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      gsmNumber: json['gsmNumber'] as String,
      addressList: (json['addressList'] as List<dynamic>)
          .map((e) => IyziupAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InitialConsumerToJson(InitialConsumer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'gsmNumber': instance.gsmNumber,
      'addressList': instance.addressList,
    };
