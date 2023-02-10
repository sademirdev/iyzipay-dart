// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_card_management_page_initialize_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCardManagementPageInitializeRequest
    _$CreateCardManagementPageInitializeRequestFromJson(
            Map<String, dynamic> json) =>
        CreateCardManagementPageInitializeRequest(
          locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
          conversationId: json['conversationId'] as String?,
          addNewCardEnabled: json['addNewCardEnabled'] as bool,
          validateNewCard: json['validateNewCard'] as bool,
          externalId: json['externalId'] as String,
          email: json['email'] as String,
          cardUserKey: json['cardUserKey'] as String,
          callbackUrl: json['callbackUrl'] as String,
          debitCardAllowed: json['debitCardAllowed'] as bool,
        );

Map<String, dynamic> _$CreateCardManagementPageInitializeRequestToJson(
    CreateCardManagementPageInitializeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('conversationId', instance.conversationId);
  val['addNewCardEnabled'] = instance.addNewCardEnabled;
  val['validateNewCard'] = instance.validateNewCard;
  val['externalId'] = instance.externalId;
  val['email'] = instance.email;
  val['cardUserKey'] = instance.cardUserKey;
  val['callbackUrl'] = instance.callbackUrl;
  val['debitCardAllowed'] = instance.debitCardAllowed;
  return val;
}

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};
