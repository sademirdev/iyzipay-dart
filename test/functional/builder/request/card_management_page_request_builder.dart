import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/requests/create_card_management_page_initialize_request.dart';

import 'base_request_builder.dart';

class CardManagementPageRequestBuilder extends BaseRequestBuilder {
  const CardManagementPageRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.addNewCardEnabled,
    required this.validateNewCard,
    required this.externalId,
    required this.email,
    required this.cardUserKey,
    required this.callbackUrl,
    required this.debitCardAllowed,
  });

  const CardManagementPageRequestBuilder.create()
      : addNewCardEnabled = true,
        validateNewCard = true,
        externalId = '123123',
        email = 'test@iyzico.com',
        cardUserKey = null,
        callbackUrl = 'merchant.com/callbackurl',
        debitCardAllowed = true;

  final bool addNewCardEnabled;
  final bool validateNewCard;
  final String externalId;
  final String email;
  final String? cardUserKey;
  final String callbackUrl;
  final bool debitCardAllowed;

  CreateCardManagementPageInitializeRequest build() {
    return CreateCardManagementPageInitializeRequest(
      locale: locale,
      conversationId: conversationId,
      addNewCardEnabled: addNewCardEnabled,
      validateNewCard: validateNewCard,
      externalId: externalId,
      email: email,
      cardUserKey: cardUserKey,
      callbackUrl: callbackUrl,
      debitCardAllowed: debitCardAllowed,
    );
  }

  CardManagementPageRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    bool? addNewCardEnabled,
    bool? validateNewCard,
    String? externalId,
    String? email,
    String? cardUserKey,
    String? callbackUrl,
    bool? debitCardAllowed,
  }) {
    return CardManagementPageRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      addNewCardEnabled: addNewCardEnabled ?? this.addNewCardEnabled,
      validateNewCard: validateNewCard ?? this.validateNewCard,
      externalId: externalId ?? this.externalId,
      email: email ?? this.email,
      cardUserKey: cardUserKey ?? this.cardUserKey,
      callbackUrl: callbackUrl ?? this.callbackUrl,
      debitCardAllowed: debitCardAllowed ?? this.debitCardAllowed,
    );
  }
}
