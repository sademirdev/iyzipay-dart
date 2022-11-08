// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_cards_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCardsRequest _$RetrieveCardsRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveCardsRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      cardUserKey: json['cardUserKey'] as String,
    );

Map<String, dynamic> _$RetrieveCardsRequestToJson(
    RetrieveCardsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['cardUserKey'] = instance.cardUserKey;
  return val;
}
