import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/models/card_information.dart';
import 'package:iyzipay/src/requests/create_card_request.dart';

import 'base_request_builder.dart';

class CreateCardRequestBuilder extends BaseRequestBuilder {
  const CreateCardRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.email,
    required this.cardUserKey,
    required this.card,
    required this.externalId,
  });

  const CreateCardRequestBuilder.create()
      : card = null,
        cardUserKey = null,
        email = null,
        externalId = null;

  final String? email;
  final String? cardUserKey;
  final CardInformation? card;
  final String? externalId;

  CreateCardRequest build() {
    assert(
      externalId != null &&
          email != null &&
          cardUserKey != null &&
          card != null,
      '[externalId], [email], [cardUserKey], [card] cannot be null. They should be initialized via compWith() method',
    );

    return CreateCardRequest(
      locale: locale,
      conversationId: conversationId,
      externalId: externalId!,
      email: email!,
      cardUserKey: cardUserKey!,
      card: card!,
    );
  }

  CreateCardRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? email,
    String? cardUserKey,
    CardInformation? card,
    String? externalId,
  }) {
    return CreateCardRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      email: email ?? this.email,
      cardUserKey: cardUserKey ?? this.cardUserKey,
      card: card ?? this.card,
      externalId: externalId ?? this.externalId,
    );
  }
}
