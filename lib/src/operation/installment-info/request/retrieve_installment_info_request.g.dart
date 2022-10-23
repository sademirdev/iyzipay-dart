// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_installment_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveInstallmentInfoRequest _$RetrieveInstallmentInfoRequestFromJson(
        Map<String, dynamic> json) =>
    RetrieveInstallmentInfoRequest(
      locale: json['locale'] as String?,
      conversationId: json['conversationId'] as String?,
      binNumber: json['binNumber'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$RetrieveInstallmentInfoRequestToJson(
    RetrieveInstallmentInfoRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('conversationId', instance.conversationId);
  val['binNumber'] = instance.binNumber;
  val['price'] = instance.price;
  return val;
}
