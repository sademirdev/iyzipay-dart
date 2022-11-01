// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cancel_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCancelRequest _$CreateCancelRequestFromJson(Map<String, dynamic> json) =>
    CreateCancelRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      paymentId: json['paymentId'] as String,
      ip: json['ip'] as String,
    );

Map<String, dynamic> _$CreateCancelRequestToJson(CreateCancelRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentId'] = instance.paymentId;
  val['ip'] = instance.ip;
  return val;
}
