// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_installment_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveInstallmentInfoResponse _$RetrieveInstallmentInfoResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveInstallmentInfoResponse(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      installmentDetails: (json['installmentDetails'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InstallmentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$RetrieveInstallmentInfoResponseToJson(
    RetrieveInstallmentInfoResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$IyzipayStatusEnumMap[instance.status]);
  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('systemTime', instance.systemTime);
  writeNotNull('conversationId', instance.conversationId);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorMessage', instance.errorMessage);
  writeNotNull('errorGroup', instance.errorGroup);
  writeNotNull('installmentDetails', instance.installmentDetails);
  return val;
}

const _$IyzipayStatusEnumMap = {
  IyzipayStatus.success: 'success',
  IyzipayStatus.failure: 'failure',
};

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

InstallmentDetail _$InstallmentDetailFromJson(Map<String, dynamic> json) =>
    InstallmentDetail(
      binNumber: json['binNumber'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['cardType']),
      cardAssociation: $enumDecodeNullable(
          _$CardAssociationEnumMap, json['cardAssociation']),
      cardFamilyName: json['cardFamilyName'] as String?,
      force3ds: json['force3ds'] as int?,
      bankName: json['bankName'] as String?,
      bankCode: json['bankCode'] as int?,
      forceCvc: json['forceCvc'] as int?,
      commercial: json['commercial'] as int?,
      installmentPrices: (json['installmentPrices'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InstallmentPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InstallmentDetailToJson(InstallmentDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('binNumber', instance.binNumber);
  writeNotNull('price', instance.price);
  writeNotNull('cardType', _$CardTypeEnumMap[instance.cardType]);
  writeNotNull(
      'cardAssociation', _$CardAssociationEnumMap[instance.cardAssociation]);
  writeNotNull('cardFamilyName', instance.cardFamilyName);
  writeNotNull('force3ds', instance.force3ds);
  writeNotNull('bankName', instance.bankName);
  writeNotNull('bankCode', instance.bankCode);
  writeNotNull('forceCvc', instance.forceCvc);
  writeNotNull('commercial', instance.commercial);
  writeNotNull('installmentPrices', instance.installmentPrices);
  return val;
}

const _$CardTypeEnumMap = {
  CardType.creditCard: 'CREDIT_CARD',
  CardType.debitCard: 'DEBIT_CARD',
  CardType.prePaidCard: 'PREPAID_CARD',
};

const _$CardAssociationEnumMap = {
  CardAssociation.masterCard: 'MASTER_CARD',
  CardAssociation.visa: 'VISA',
  CardAssociation.troy: 'TROY',
  CardAssociation.americanExpress: 'AMERICAN_EXPRESS',
};

InstallmentPrice _$InstallmentPriceFromJson(Map<String, dynamic> json) =>
    InstallmentPrice(
      installmentPrice: (json['installmentPrice'] as num?)?.toDouble(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      installmentNumber: json['installmentNumber'] as int?,
    );

Map<String, dynamic> _$InstallmentPriceToJson(InstallmentPrice instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('installmentPrice', instance.installmentPrice);
  writeNotNull('totalPrice', instance.totalPrice);
  writeNotNull('installmentNumber', instance.installmentNumber);
  return val;
}
