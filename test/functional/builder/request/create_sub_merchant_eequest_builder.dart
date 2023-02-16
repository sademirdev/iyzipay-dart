import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/enums/sub_merchant_type.dart';
import 'package:iyzipay/src/requests/create_sub_merchant_request.dart';

import '../../util/random_generator.dart';
import 'base_request_builder.dart';

class CreateSubMerchantRequestBuilder extends BaseRequestBuilder {
  const CreateSubMerchantRequestBuilder._({
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
    required this.subMerchantExternalId,
    required this.identityNumber,
    required this.taxNumber,
    required this.subMerchantType,
    required this.swiftCode,
  });

  const CreateSubMerchantRequestBuilder.create()
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
        subMerchantExternalId = null,
        identityNumber = null,
        taxNumber = null,
        subMerchantType = null,
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
  final String? subMerchantExternalId;
  final String? identityNumber;
  final String? taxNumber;
  final SubMerchantType? subMerchantType;
  final String? swiftCode;

  CreateSubMerchantRequest build() {
    return CreateSubMerchantRequest(
      locale: locale,
      conversationId: conversationId,
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
      subMerchantExternalId: subMerchantExternalId,
      subMerchantType: subMerchantType,
    );
  }

  CreateSubMerchantRequestBuilder personalSubMerchantRequest() {
    return copyWith(
      subMerchantExternalId: RandomGenerator.randomId(),
      subMerchantType: SubMerchantType.personal,
      contactName: 'John',
      contactSurname: 'Doe',
      identityNumber: '123456789',
    );
  }

  CreateSubMerchantRequestBuilder privateSubMerchantRequest() {
    return copyWith(
      subMerchantExternalId: RandomGenerator.randomId(),
      subMerchantType: SubMerchantType.privateCompany,
      taxOffice: 'Tax office',
      legalCompanyTitle: 'John Doe inc',
      identityNumber: '31300864726',
    );
  }

  CreateSubMerchantRequestBuilder limitedCompanySubMerchantRequest() {
    return copyWith(
      subMerchantExternalId: RandomGenerator.randomId(),
      subMerchantType: SubMerchantType.limitedOrJointStockCompany,
      taxNumber: '9261877',
      taxOffice: 'Tax office',
      legalCompanyTitle: 'XYZ inc',
    );
  }

  CreateSubMerchantRequestBuilder copyWith({
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
    String? subMerchantExternalId,
    String? identityNumber,
    String? taxNumber,
    SubMerchantType? subMerchantType,
    String? swiftCode,
  }) {
    return CreateSubMerchantRequestBuilder._(
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
      subMerchantExternalId:
          subMerchantExternalId ?? this.subMerchantExternalId,
      identityNumber: identityNumber ?? this.identityNumber,
      taxNumber: taxNumber ?? this.taxNumber,
      subMerchantType: subMerchantType ?? this.subMerchantType,
      swiftCode: swiftCode ?? this.swiftCode,
    );
  }
}
