import 'package:iyzipay/src/enum/card_association.dart';
import 'package:iyzipay/src/enum/card_type.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_bin_number_response.g.dart';

///
@JsonSerializable(includeIfNull: false, createToJson: false)
class RetrieveBinNumberResponse extends Response<RetrieveBinNumberResponse> {
  ///
  RetrieveBinNumberResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.binNumber,
    this.cardType,
    this.cardAssociation,
    this.cardFamily,
    this.bankName,
    this.bankCode,
    this.commercial,
    super.errorCode,
    super.errorMessage,
  });

  ///
  factory RetrieveBinNumberResponse.fromJson(Map<String, dynamic> json) => _$RetrieveBinNumberResponseFromJson(json);

  ///
  final String? binNumber;

  ///
  final CardType? cardType;

  ///
  final CardAssociation? cardAssociation;

  ///
  final String? cardFamily;

  ///
  final String? bankName;

  ///
  final int? bankCode;

  ///
  final int? commercial;

  @override
  RetrieveBinNumberResponse fromJson(Map<String, dynamic> json) => _$RetrieveBinNumberResponseFromJson(json);
}
