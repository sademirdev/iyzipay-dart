import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/http_client.dart';
import 'package:iyzipay/src/iyzipay_resource.dart';
import 'package:iyzipay/src/json_convertible.dart';
import 'package:iyzipay/src/requests/create_sub_merchant_request.dart';
import 'package:iyzipay/src/requests/retrieve_sub_merchant_request.dart';
import 'package:iyzipay/src/requests/update_sub_merchant_request.dart';
import 'package:iyzipay/src/shared/network_paths.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sub_merchant.g.dart';

@JsonSerializable(includeIfNull: false)
class SubMerchant extends IyzipayResource {
  const SubMerchant({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.name,
    this.email,
    this.gsmNumber,
    this.address,
    this.iban,
    this.swiftCode,
    this.currency,
    this.taxOffice,
    this.contactName,
    this.contactSurname,
    this.legalCompanyTitle,
    this.subMerchantExternalId,
    this.identityNumber,
    this.taxNumber,
    this.subMerchantType,
    this.subMerchantKey,
    this.settlementDescriptionTemplate,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  final String? name;
  final String? email;
  final String? gsmNumber;
  final String? address;
  final String? iban;
  final String? swiftCode;
  final Currency? currency;
  final String? taxOffice;
  final String? contactName;
  final String? contactSurname;
  final String? legalCompanyTitle;
  final String? subMerchantExternalId;
  final String? identityNumber;
  final String? taxNumber;
  final String? subMerchantType;
  final String? subMerchantKey;
  final String? settlementDescriptionTemplate;

  static Future<SubMerchant?> create({
    required CreateSubMerchantRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.createSubMerchant.path,
      request: request,
      responseModel: const SubMerchant(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<SubMerchant?> update({
    required UpdateSubMerchantRequest request,
    required Options options,
  }) async {
    return HttpClient.put(
      url: options.baseUrl + NetworkPaths.updateSubMerchant.path,
      request: request,
      responseModel: const SubMerchant(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  static Future<SubMerchant?> retrieve({
    required RetrieveSubMerchantRequest request,
    required Options options,
  }) async {
    return HttpClient.post(
      url: options.baseUrl + NetworkPaths.retrieveSubMerchant.path,
      request: request,
      responseModel: const SubMerchant(),
      headers: IyzipayResource.generateHttpHeader(
        options: options,
        body: request.toJson(),
      ),
    );
  }

  @override
  SubMerchant fromJson(JsonMap json) => _$SubMerchantFromJson(json);

  @override
  JsonMap toJson() => _$SubMerchantToJson(this);
}
