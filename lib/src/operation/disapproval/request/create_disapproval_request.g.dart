// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_disapproval_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDisapprovalRequest _$CreateDisapprovalRequestFromJson(
        Map<String, dynamic> json) =>
    CreateDisapprovalRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String,
    );

Map<String, dynamic> _$CreateDisapprovalRequestToJson(
    CreateDisapprovalRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['paymentTransactionId'] = instance.paymentTransactionId;
  return val;
}
