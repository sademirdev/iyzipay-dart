import 'package:iyzipay/src/enums/iyzipay_locale.dart';
import 'package:iyzipay/src/requests/retrieve_card_management_page_card_request.dart';

import 'base_request_builder.dart';

class CardManagementRetrieveCardBuilder extends BaseRequestBuilder {
  const CardManagementRetrieveCardBuilder._({
    required super.locale,
    required super.conversationId,
    required this.pageToken,
  });

  const CardManagementRetrieveCardBuilder.create() : pageToken = null;

  final String? pageToken;

  RetrieveCardManagementPageCardRequest build() {
    assert(pageToken != null, '[pageToken] cannot be null');

    return RetrieveCardManagementPageCardRequest(
      locale: locale,
      conversationId: conversationId,
      pageToken: pageToken!,
    );
  }

  CardManagementRetrieveCardBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? pageToken,
  }) {
    return CardManagementRetrieveCardBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      pageToken: pageToken ?? this.pageToken,
    );
  }
}
