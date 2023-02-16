import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/requests/update_sub_merchant_request.dart';

import 'base_request_builder.dart';

class UpdateSubMerchantRequestBuilder extends BaseRequestBuilder {
  const UpdateSubMerchantRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.name,
    required this.email,
    required this.gsmNumber,
    required this.address,
    required this.iban,
    required this.currency,
    required this.taxOffice,
    required this.contactName,
    required this.contactSurname,
    required this.legalCompanyTitle,
    required this.subMerchantKey,
    required this.identityNumber,
    required this.taxNumber,
    required this.swiftCode,
  });

  const UpdateSubMerchantRequestBuilder.create()
      : name = "John's market",
        email = 'email@submerchantemail.com',
        gsmNumber = '+905350000000',
        address = 'Nidakule Göztepe, Merdivenköy Mah. Bora Sok. No:1',
        iban = 'TR180006200119000006672315',
        currency = Currency.TRY,
        taxOffice = null,
        contactName = null,
        contactSurname = null,
        legalCompanyTitle = null,
        subMerchantKey = null,
        identityNumber = null,
        taxNumber = null,
        swiftCode = null;

  final String name;
  final String email;
  final String gsmNumber;
  final String address;
  final String iban;
  final Currency currency;
  final String? taxOffice;
  final String? contactName;
  final String? contactSurname;
  final String? legalCompanyTitle;
  final String? subMerchantKey;
  final String? identityNumber;
  final String? taxNumber;
  final String? swiftCode;

  UpdateSubMerchantRequest build() {
    return UpdateSubMerchantRequest(
      name: name,
      email: email,
      gsmNumber: gsmNumber,
      address: address,
      iban: iban,
      taxOffice: taxOffice,
      contactName: contactName,
      contactSurname: contactSurname,
      legalCompanyTitle: legalCompanyTitle,
      swiftCode: swiftCode,
      currency: currency,
      identityNumber: identityNumber,
      taxNumber: taxNumber,
      subMerchantKey: subMerchantKey,
    );
  }

  UpdateSubMerchantRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? name,
    String? email,
    String? gsmNumber,
    String? address,
    String? iban,
    Currency? currency,
    String? taxOffice,
    String? contactName,
    String? contactSurname,
    String? legalCompanyTitle,
    String? subMerchantKey,
    String? identityNumber,
    String? taxNumber,
    String? swiftCode,
  }) {
    return UpdateSubMerchantRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      name: name ?? this.name,
      email: email ?? this.email,
      gsmNumber: gsmNumber ?? this.gsmNumber,
      address: address ?? this.address,
      iban: iban ?? this.iban,
      currency: currency ?? this.currency,
      taxOffice: taxOffice ?? this.taxOffice,
      contactName: contactName ?? this.contactName,
      contactSurname: contactSurname ?? this.contactSurname,
      legalCompanyTitle: legalCompanyTitle ?? this.legalCompanyTitle,
      subMerchantKey: subMerchantKey ?? this.subMerchantKey,
      identityNumber: identityNumber ?? this.identityNumber,
      taxNumber: taxNumber ?? this.taxNumber,
      swiftCode: swiftCode ?? this.swiftCode,
    );
  }
}
