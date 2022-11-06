// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_checkout_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveCheckoutFormRequest _$RetrieveCheckoutFormRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveCheckoutFormRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$RetrieveCheckoutFormRequestToJson(
    RetrieveCheckoutFormRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['token'] = instance.token;
  return val;
}
