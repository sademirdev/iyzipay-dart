import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/requests/retrieve_checkout_form_request.dart';

import 'base_request_builder.dart';

class RetrieveCheckoutFormRequestBuilder extends BaseRequestBuilder {
  const RetrieveCheckoutFormRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.token,
  });

  const RetrieveCheckoutFormRequestBuilder.create() : token = null;

  final String? token;

  RetrieveCheckoutFormRequest build() {
    assert(
      token != null,
      '[token] cannot be null. It should be initialized via copyWith() method',
    );

    return RetrieveCheckoutFormRequest(
      locale: locale,
      conversationId: conversationId,
      token: token!,
    );
  }

  RetrieveCheckoutFormRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? token,
  }) {
    return RetrieveCheckoutFormRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      token: token ?? this.token,
    );
  }
}
