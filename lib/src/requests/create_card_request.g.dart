// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCardRequest _$CreateCardRequestFromJson(Map<String, dynamic> json) =>
    CreateCardRequest(
      externalId: json['externalId'] as String,
      email: json['email'] as String,
      cardUserKey: json['cardUserKey'] as String,
      card: CardInformation.fromJson(json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCardRequestToJson(CreateCardRequest instance) =>
    <String, dynamic>{
      'externalId': instance.externalId,
      'email': instance.email,
      'cardUserKey': instance.cardUserKey,
      'card': instance.card,
    };
