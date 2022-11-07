// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCardRequest _$CreateCardRequestFromJson(Map<String, dynamic> json) =>
    CreateCardRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      cardUserKey: json['cardUserKey'] as String?,
      email: json['email'] as String?,
      externalId: json['externalId'] as String?,
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCardRequestToJson(CreateCardRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  writeNotNull('cardUserKey', instance.cardUserKey);
  writeNotNull('email', instance.email);
  writeNotNull('externalId', instance.externalId);
  val['card'] = instance.card.toJson();
  return val;
}
