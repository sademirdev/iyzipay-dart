import 'package:iyzipay/src/enum/iyzipay_locale.dart';
import 'package:iyzipay/src/enum/iyzipay_status.dart';
import 'package:iyzipay/src/interface/response.dart';
import 'package:iyzipay/src/model/card_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retrieve_cards_response.g.dart';

/// {@template retrieve_cards_response}
///
/// You can keep the `CardDetail.cardToken` values in your database or you can get the
/// `CardDetail.cardToken` values every time using this service.
///
/// {@endtemplate retrieve_cards_response}
@JsonSerializable(includeIfNull: false)
class RetrieveCardsResponse extends Response<RetrieveCardsResponse> {
  /// {@macro retrieve_cards_response}
  const RetrieveCardsResponse({
    super.status,
    super.locale,
    super.systemTime,
    super.conversationId,
    this.cardUserKey,
    this.cardDetails,
    super.errorCode,
    super.errorMessage,
    super.errorGroup,
  });

  /// The value of the hidden card user determined by iyzico.
  final String? cardUserKey;

  ///
  final List<CardDetail?>? cardDetails;

  @override
  RetrieveCardsResponse fromJson(Map<String, dynamic> json) => _$RetrieveCardsResponseFromJson(json);
}
